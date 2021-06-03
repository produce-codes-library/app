//
//  SearchButton.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct SearchButtonView: View {
    
    @Binding var activeSelection:String;
    @State var width:CGFloat = contentWidth;
    @State var height:CGFloat = 45;
    @State var backgroundColor:Color = .white;
    @State var foregroundColor:Color = .black;
    
    var body: some View {
        
        Button {
            activeSelection = "search";
        } label: {
        
            ZStack {
                Rectangle()
                    .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(self.height/2)
                    .foregroundColor(self.backgroundColor)
                    .shadow(radius: 1)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(self.foregroundColor)
                    Text("Find your produce")
                        .foregroundColor(self.foregroundColor)
                }
                
            }
        }
        
    }
}
