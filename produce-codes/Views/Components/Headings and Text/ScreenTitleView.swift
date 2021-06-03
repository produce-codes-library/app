//
//  ScreenTitleView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct ScreenTitleView: View {
    
    @State var text:String = "Title";
    
    var body: some View {
        Text(self.text)
            .font(.custom(font_semibold, size: 35))
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
            .padding(.top)
            .frame(width: contentWidth, height: 75, alignment: .bottomLeading)
    }
}

struct ScreenTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTitleView()
    }
}
