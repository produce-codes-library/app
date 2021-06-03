//
//  LargeCollectionProfileView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct LargeCollectionProfileView: View {
    @State var collectionName:String;
    @State var width:CGFloat = contentWidth;
    @State var height:CGFloat = 125;
    @Binding var collectionObjectList:[CollectionObject];
    
    var body: some View {
        HStack {
            
            if collectionObjectList.filter({$0.name == collectionName}).count > 0 {
            
                ZStack {
                    URLImageView(url: collectionObjectList.filter({$0.name == collectionName})[0].image)
                        .frame(width: self.height, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                }
                
                VStack {
                    HStack {
                        Text(collectionName)
                            .font(.custom(font_semibold, size:22))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                    HStack {
                        Text(collectionObjectList.filter({$0.name == collectionName})[0].description)
                            .font(.custom(font_regular, size:20))
                            .foregroundColor(.black)
                        Spacer()
                    }
                }
            }
            
            Spacer()
            
        }
        .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
