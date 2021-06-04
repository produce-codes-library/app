//
//  ProduceSummaryView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct ProduceSummaryView: View {
    @Binding var currentProduce:String;
    @Binding var produceObjectList:[ProduceObject];
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.white)
                    
            VStack {
                
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                if produceObjectList.filter({$0.plu == currentProduce}).count > 0 {
                    
                    URLImageView(url: produceObjectList.filter({$0.plu == currentProduce})[0].image)
                        .frame(width: contentWidth-75, height: contentWidth-75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                    
                    Text( produceObjectList.filter({$0.plu == currentProduce})[0].name)
                        .font(.custom(font_semibold, size: 28))
                        .foregroundColor(.black)
                        .lineLimit(2)
                        .frame(width: contentWidth, height: 70, alignment: .bottom)
                    
                    Text( currentProduce)
                        .font(.custom(font_semibold, size: 50))
                        .foregroundColor(.black)
                        .lineLimit(2)
                        .frame(width: contentWidth, height: 70, alignment: .top)
                }
                
                Spacer()
                
                BarcodeImageView(code: currentProduce)
                    .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        currentProduce = "";
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                    
                    
                }
                .frame(width: contentWidth, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            
        }
        
    }
}

