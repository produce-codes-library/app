//
//  BarcodeImageView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/23/21.
//

import SwiftUI

struct BarcodeImageView: View {
    @State var code:String;
    
    var body: some View {
        URLImageView(url: "https://www.scandit.com/wp-content/themes/scandit/barcode-generator.php?symbology=code128&value=\(code)&size=300&ec=L")
    }
}

struct BarcodeImageView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeImageView(code:"4032")
    }
}
