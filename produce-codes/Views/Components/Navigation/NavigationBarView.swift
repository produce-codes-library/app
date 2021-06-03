//
//  NavigationBarView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct NavigationBarView: View {
    
    @Binding var currentSelection:String;
    @State var backgroundColor:Color = .white;
    @State var activeColor:Color = .red;
    @State var inactiveColor:Color = .black;
    @State var height:CGFloat = 55;
    

    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(backgroundColor)
                .ignoresSafeArea()
                .frame(width: windowWidth, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
                VStack {
                                    
                    HStack {
                        Spacer()
                        
                        NavigationButtonView(
                            activeSelection: $currentSelection,
                            name: "home",
                            systemName: "house.fill",
                            activeColor: activeColor,
                            inactiveColor: inactiveColor
                        )
                        
                        Spacer()
                        
                        NavigationButtonView(
                            activeSelection: $currentSelection,
                            name: "search",
                            systemName: "magnifyingglass",
                            activeColor: activeColor,
                            inactiveColor: inactiveColor
                        )
                        
                        Spacer()
                        
                        NavigationButtonView(
                            activeSelection: $currentSelection,
                            name: "learn",
                            systemName: "book.fill",
                            activeColor: activeColor,
                            inactiveColor: inactiveColor
                        )
                        
                        Spacer()
                        
                        NavigationButtonView(
                            activeSelection: $currentSelection,
                            name: "info",
                            systemName: "info.circle",
                            activeColor: activeColor,
                            inactiveColor: inactiveColor
                        )
                        
                        Spacer()
                    }
                    
                }
            
            
        }
        
    }
}
