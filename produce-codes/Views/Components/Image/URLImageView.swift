//
//  URLImageView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/23/21.
//

import SwiftUI

struct URLImageView: View {
    private enum LoadState {
            case loading, success, failure
        }

        private class Loader: ObservableObject {
            var data = Data()
            var state = LoadState.loading

            init(url: String) {
                guard let parsedURL = URL(string: url) else {
                    print(url)
                    fatalError("Invalid URL: \(url)")
                }

                URLSession.shared.dataTask(with: parsedURL) { data, response, error in
                    if let data = data, data.count > 0 {
                        self.data = data
                        self.state = .success
                    } else {
                        self.state = .failure
                    }

                    DispatchQueue.main.async {
                        self.objectWillChange.send()
                    }
                }.resume()
            }
        }

        @StateObject private var loader: Loader
        var loading: Image
        var failure: Image

        var body: some View {
            selectImage()
                .resizable()
                .foregroundColor(.white)
        }

        init(url: String, loading: Image = Image(systemName: "photo"), failure: Image = Image(systemName: "multiply.circle")) {
            _loader = StateObject(wrappedValue: Loader(url: url))
            self.loading = loading
            self.failure = failure
        }

        private func selectImage() -> Image {
            switch loader.state {
            case .loading:
                return loading
            case .failure:
                return failure
            default:
                if let image = UIImage(data: loader.data) {
                    return Image(uiImage: image)
                } else {
                    return failure
                    
                }
            }
        }
    }

struct URLImageView_Previews: PreviewProvider {
    static var previews: some View {
        URLImageView(url: "https://i5.walmartimages.com/asr/5af56fe3-27ea-4c78-9d3f-74f0fdecfcff_1.1f4e7886b6e329ccb374d9e3fa675e45.jpeg?odnWidth=408&odnHeight=408&odnBg=ffffff")
    }
}
