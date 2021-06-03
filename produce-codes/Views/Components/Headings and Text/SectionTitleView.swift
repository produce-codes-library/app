//
//  SectionTitleView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct SectionTitleView: View {
    
    @State var text:String = "Section";
    
    var body: some View {
        Text(self.text)
            .font(.custom(font_regular, size: 20))
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
            .padding(.top)
            .frame(width: contentWidth, height: 35, alignment: .bottomLeading)
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView()
    }
}
