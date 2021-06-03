//
//  LargeProduceProfileView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/20/21.
//

import SwiftUI

struct LargeProduceProfileView: View {
    
    @State var code:String;
    @State var width:CGFloat = contentWidth;
    @State var height:CGFloat = 125;
    @Binding var produceObjectList:[ProduceObject];
    
    var body: some View {
        HStack {
            
            if produceObjectList.filter({$0.plu == code}).count > 0 {
                ZStack {
                    URLImageView(url: produceObjectList.filter({$0.plu == code})[0].image)
                        .frame(width: self.height, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                }
                
                VStack {
                    HStack {
                        Text(code)
                            .font(.custom(font_semibold, size:22))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                    HStack {
                        Text(produceObjectList.filter({$0.plu == code})[0].name)
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
