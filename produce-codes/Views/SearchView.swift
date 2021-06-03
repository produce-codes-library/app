//
//  SearchView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var currentNavigation:String;
    @Binding var currentProduce:String;
    @Binding var produceObjectList:[ProduceObject];
    @State var searchQuery:String = "";
    @State var maxResults:Int = 15;
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
            
            VStack {
                
                ScreenTitleView(text: "Search")
                    .padding(.top)
                
                SearchFieldView(searchQuery: $searchQuery)
                
                Divider()
                    .padding(.vertical)
                
                ScrollView {
                    VStack {
                        
                        if filterResults(query: searchQuery, dataset: produceObjectList).count < maxResults {
                            ForEach(filterResults(query: searchQuery, dataset: produceObjectList), id:\.self) {object in
                                Button {
                                    currentProduce = object.plu;
                                } label: {
                                    CompactProduceProfile(code: object.plu, produceObjectList: $produceObjectList)
                                }
                                Divider().frame(width: contentWidth, height: 1, alignment: .center)
                            }
                        }
                        else {
                            ForEach(filterResults(query: searchQuery, dataset: produceObjectList)[..<maxResults], id:\.self) {object in
                                Button {
                                    currentProduce = object.plu;
                                } label: {
                                    CompactProduceProfile(code: object.plu, produceObjectList: $produceObjectList)
                                }
                                Divider().frame(width: contentWidth, height: 1, alignment: .center)
                            }
                        }
                        
                        // This is just for spacing so that scrolling content gets above the
                        // navigation bar
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                    }
                }
            }
            
            VStack {
                Spacer()
                Rectangle()
                    .frame(width: windowWidth+5, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
                    .foregroundColor(.white)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            }
            
            VStack {
                Spacer()
                NavigationBarView(currentSelection: $currentNavigation)
            }
         
            
        }
    }
}

