//
//  LearnView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct LearnView: View {
    
    @Binding var currentNavigation:String;
    @Binding var currentCollection:String;
    @Binding var collectionObjectList:[CollectionObject];
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
            
            VStack {
                
                ScreenTitleView(text: "Learn")
                    .padding(.top)
                                
                Divider()
                    .padding(.vertical)
                
                ScrollView {
                    VStack {
                        
                        SectionTitleView(text: "Basics")
                        CollectionScrollView(collection: "basics", currentCollection: $currentCollection, collectionObjectList: $collectionObjectList)
                        
                        Divider().frame(width: contentWidth, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        SectionTitleView(text: "Intermediate")
                        CollectionScrollView(collection: "intermediate", currentCollection: $currentCollection, collectionObjectList: $collectionObjectList)

                        Divider().frame(width: contentWidth, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        SectionTitleView(text: "Specialty")
                        CollectionScrollView(collection: "specialty", currentCollection: $currentCollection, collectionObjectList: $collectionObjectList)

                        // This is just for spacing so that scrolling content gets above the
                        // navigation bar
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 75, height: 75, alignment: .center)
                        
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

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

