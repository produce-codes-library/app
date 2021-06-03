//
//  QuizResultsView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct QuizResultsView: View {
    
    @Binding var currentQuizQuestions:[String];
    @Binding var currentQuizAnswers:[String];
    @Binding var currentQuizNumber:Int;
    @Binding var currentResult:String;
    @Binding var produceObjectList:[ProduceObject];
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
            
            VStack {
                
                ScreenTitleView(text: "Quiz Results")
                    .padding(.top)
                
                Divider()
                    .padding(.vertical)
                
                ScrollView {
                    VStack {
                        
                        ForEach(0..<currentQuizNumber, id:\.self) {index in
                            ZStack {
                                CompactProduceProfile(code: currentQuizQuestions[index], produceObjectList: $produceObjectList)
                                HStack {
                                    Spacer()
                                    
                                    if currentQuizQuestions[index] == currentQuizAnswers[index] {
                                        Image(systemName: "checkmark.circle.fill")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(.green)
                                    }
                                    
                                    else {
                                        Image(systemName: "xmark.circle.fill")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(.red)
                                    }
                                    
                                }.frame(width: contentWidth, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                            }
                            Divider().frame(width: contentWidth, height: 1, alignment: .center)
                        }
                        Spacer()
                        
                    }
                    .frame(width: windowWidth, height: CGFloat(currentQuizNumber)*65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        currentQuizQuestions = [];
                        currentQuizAnswers = [];
                        currentQuizNumber = 0;
                        currentResult = "";
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                }
                .frame(width: contentWidth, height: 75, alignment: .center)
                Spacer()
            }
            
//            VStack {
//                
//                Spacer()
//                HStack {
//                    Button {
//                        currentQuizQuestions = [];
//                        currentQuizAnswers = [];
//                        currentQuizNumber = 0;
//                        currentResult = "";
//                    } label : {
//                        TestYourKnowledgeButtonView(text: "Close")
//                    }
//                }
//                .frame(width: contentWidth, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }
            
        }
        
    }
}
