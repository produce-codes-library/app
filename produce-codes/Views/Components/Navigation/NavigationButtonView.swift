//
//  NavigationButtonView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct NavigationButtonView: View {
    
    @Binding var activeSelection:String;
    @State var name:String;
    @State var systemName:String = "house"
    @State var activeColor:Color = .blue
    @State var inactiveColor:Color = .black
    @State var size:CGFloat = 20
    
    var body: some View {
        
        Button {
            activeSelection = name;
        } label: {
            if activeSelection == name {
                Image(systemName: self.systemName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(activeColor)
                    .frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
            }
            else {
                Image(systemName: self.systemName)
                    .resizable(resizingMode: .stretch)
                    .foregroundColor(inactiveColor)
                    .frame(width: size, height: size, alignment: .center)
                    .aspectRatio(contentMode: .fill)
            }
        }
        
        
    }
}

