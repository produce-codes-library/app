//
//  BubbleCollectionView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct BubbleCollectionView: View, Hashable {
    
    // Implement Equatable
    static func == (lhs: BubbleCollectionView, rhs: BubbleCollectionView) -> Bool {
        lhs.name == rhs.name
    }
    
    // Implement Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    @State var name:String = "Default";
    @State var width:CGFloat = 115;
    @State var height:CGFloat = 36;
    @State var imageName:String = "4016"
    @State var backgroundColor:Color = .white;
    @State var foregroundColor:Color = .white;
    @Binding var collectionObjectList:[CollectionObject];
    
    var body: some View {
            ZStack {
                Rectangle()
                    .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(self.height/2)
                    .shadow(radius: 1)
                    .foregroundColor(self.backgroundColor)
                
                HStack {
                    if collectionObjectList.filter({$0.name == name}).count > 0 {
                        URLImageView(url: collectionObjectList.filter({$0.name == name})[0].image)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: self.height-10, height: self.height-10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius((self.height-10)/2)
                    }
                    
                    Text(self.name)
                        .font(.custom(font_semibold, size: 14))
                        .foregroundColor(self.foregroundColor)
                    
                    Spacer()
                }.frame(width: self.width-12, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
            }
    }
}
