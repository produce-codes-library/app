//
//  SearchFieldView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct SearchFieldView: View {
    @Binding var searchQuery:String;
    @State var width:CGFloat = contentWidth;
    @State var height:CGFloat = 45;
    @State var backgroundColor:Color = .white;
    @State var foregroundColor:Color = .black;
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(self.height/2)
                .foregroundColor(self.backgroundColor)
                .shadow(radius: 1)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(self.foregroundColor)
                    .padding(.leading)
                Spacer()
            }
            .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            TextField("", text: $searchQuery)
                .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .font(.custom(font_regular, size: 16))
                .foregroundColor(.black)
            
        }
        
    }
}

