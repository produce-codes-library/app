//
//  ParagraphView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct ParagraphView: View {
    
    @State var text:String = "Section";
    
    var body: some View {
        Text(self.text)
            .font(.custom(font_regular, size: 16))
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
            .padding(.top)
    }
}

struct ParagraphView_Previews: PreviewProvider {
    static var previews: some View {
        ParagraphView()
    }
}
