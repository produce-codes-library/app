//
//  CollectionSummaryView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct CollectionSummaryView: View {
    @Binding var collectionName:String;
    @Binding var currentQuizQuestions:[String];
    @Binding var currentProduce:String;
    @Binding var produceObjectList:[ProduceObject];
    @Binding var collectionObjectList:[CollectionObject];
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
            
            VStack {
                
                ScreenTitleView(text: collectionName)
                    .padding(.top)
                
                Divider()
                    .padding(.vertical)
                
                ScrollView {
                    VStack {
                        
                        if collectionObjectList.filter({$0.name == collectionName}).count > 0 {
                        ForEach(collectionObjectList.filter({$0.name == collectionName})[0].codes, id:\.self) {plu in
                            Button {
                                currentProduce = plu;
                            } label : {
                                CompactProduceProfile(code: plu, produceObjectList: $produceObjectList)
                            }
                            Divider().frame(width: contentWidth, height: 1, alignment: .center)
                        }
                        }
                        Spacer()
                        
                    }
                }
            }
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        collectionName = "";
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                }
                .frame(width: contentWidth, height: 75, alignment: .center)
                Spacer()
            }
            
            VStack {
                
                Spacer()
                HStack {
                    Button {
                        currentQuizQuestions = collectionObjectList.filter({$0.name == collectionName})[0].codes;
                    } label : {
                        TestYourKnowledgeButtonView()
                    }
                }
                .frame(width: contentWidth, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
