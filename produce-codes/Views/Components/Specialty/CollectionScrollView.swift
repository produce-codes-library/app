//
//  CollectionScrollView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct CollectionScrollView: View {
    
    @State var collection:String;
    @Binding var currentCollection:String;
    @Binding var collectionObjectList:[CollectionObject];
    @State var width:CGFloat = 570;
    @State var height:CGFloat = 125;
    
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                
                if collection == "home" {
                    ForEach([
                        [
                            BubbleCollectionView(name:"Citrus", width:95, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Fall Seasonal", width:145, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Peppers", width: 110, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Stone Fruits", width:135, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                        [
                            BubbleCollectionView(name:"Summer Seasonal", width: 185, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Herbs", width: 95, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Onions", width:105, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Apples", width:100, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                        [
                            BubbleCollectionView(name:"Greens", width: 105, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Superfoods", width: 145, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Exotic Fruits", width: 145, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Pears", width: 95, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ]
                    ], id: \.self) {
                        list in
                        HStack() {
                            if UIDevice.current.model == "iPad" {
                                Rectangle()
                                    .frame(width: 150, height: 40, alignment: .center)
                                    .foregroundColor(.white)
                            }
                            else {
                                Rectangle()
                                    .frame(width: 20, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                            
                            ForEach(list, id: \.self) {
                                collection in
                                Button {
                                    currentCollection = collection.name
                                } label: {
                                    collection
                                }
                            }
                            
                            Spacer()
                        }
                        .frame(width: self.width, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                    
                    
                if collection == "basics" {
                    ForEach([
                        [
                            BubbleCollectionView(name:"Basic Veggies #1", width:170, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Peppers", width:115, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Basic Fruits #1", width:155, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                        [
                            BubbleCollectionView(name:"Onions", width:105, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Basic Fruits #2", width:155, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Basic Veggies #2", width:170, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                        [
                            BubbleCollectionView(name:"Basic Greens", width:145, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Roots", width:100, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"All Basics", width:120, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                    ], id: \.self) {
                        list in
                        HStack() {
                            if UIDevice.current.model == "iPad" {
                                Rectangle()
                                    .frame(width: 150, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                            else {
                                Rectangle()
                                    .frame(width: 20, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                            
                            ForEach(list, id: \.self) {
                                collection in
                                Button {
                                    currentCollection = collection.name
                                } label: {
                                    collection
                                }
                            }
                            
                            Spacer()
                        }
                        .frame(width: self.width, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                    
                if collection == "intermediate" {
                    ForEach([
                        [
                            BubbleCollectionView(name:"All Intermediate", width:170, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Pears", width:95, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Apples", width:100, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                        [
                            BubbleCollectionView(name:"Stone Fruits", width:135, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Greens", width:105, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Tropical Fruits", width:155, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                    ], id: \.self) {
                        list in
                        HStack() {
                            if UIDevice.current.model == "iPad" {
                                Rectangle()
                                    .frame(width: 150, height: 40, alignment: .center)
                                    .foregroundColor(.white)
                            }
                            else {
                                Rectangle()
                                    .frame(width: 20, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                            
                            ForEach(list, id: \.self) {
                                collection in
                                Button {
                                    currentCollection = collection.name
                                } label: {
                                    collection
                                }
                            }
                            
                            Spacer()
                        }
                        .frame(width: self.width, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            
                if collection == "specialty" {
                    ForEach([
                        [
                            BubbleCollectionView(name:"Pumpkin Patch", width:160, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                            BubbleCollectionView(name:"Exotic Fruits", width:145, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                        [
                            BubbleCollectionView(name:"Exotic Veggies", width:150, foregroundColor: .black, collectionObjectList: $collectionObjectList),
                        ],
                    ], id: \.self) {
                        list in
                        HStack() {
                            if UIDevice.current.model == "iPad" {
                                Rectangle()
                                    .frame(width: 150, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                            else {
                                Rectangle()
                                    .frame(width: 20, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                            
                            ForEach(list, id: \.self) {
                                collection in
                                Button {
                                    currentCollection = collection.name
                                } label: {
                                    collection
                                }
                            }
                            
                            Spacer()
                        }
                        .frame(width: self.width, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                }
                
                
                
                Rectangle()
                    .frame(width: self.width, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
        }
    }
}
