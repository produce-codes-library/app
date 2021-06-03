//
//  QuizAnswerView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct QuizQuestionView: View {
    
    @Binding var currentQuizQuestions:[String];
    @Binding var currentQuizAnswers:[String];
    @Binding var currentQuizNumber:Int;
    @Binding var currentResult:String;
    @Binding var produceObjectList:[ProduceObject];
    @State var userAnswer:String = "";
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.white)
                    
            VStack {
                if currentQuizQuestions.count > 0 {
                    if produceObjectList.filter({$0.plu == currentQuizQuestions[currentQuizNumber]}).count > 0 {
                        Text(produceObjectList.filter({$0.plu == currentQuizQuestions[currentQuizNumber]})[0].name)
                            .font(.custom(font_semibold, size: 28))
                            .foregroundColor(.black)
                            .lineLimit(2)
                            .frame(width: contentWidth, height: 70, alignment: .bottom)
                        URLImageView(url: produceObjectList.filter({$0.plu == currentQuizQuestions[currentQuizNumber]})[0].image)
                            .frame(width: contentWidth-75, height: contentWidth-75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                ZStack {
                                 
                    Rectangle()
                        .frame(width: 202, height: 42, alignment: .center)
                        .cornerRadius(21)
                        .foregroundColor(.black)
                    
                    Rectangle()
                        .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    TextField("", text: $userAnswer)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                        .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.custom(font_regular, size: 25))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                }
                
                Button {
                    currentQuizAnswers.append(userAnswer);
                    if currentQuizQuestions[currentQuizNumber] == currentQuizAnswers[currentQuizNumber] {
                        currentResult = "Correct!";
                    }
                    else {
                        currentResult = "Incorrect";
                    }
                } label : {
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(20)
                            .foregroundColor(.blue)
                        
                        Text("Submit")
                            .foregroundColor(.white)
                            .font(.custom(font_regular, size: 16))
                    }
                }
                            
                Spacer()
            }
            
            VStack {
                
                HStack {
                    
                    Text(String( currentQuizAnswers.count + 1) + " / " + String(currentQuizQuestions.count))
                        .foregroundColor(.black)
                        .font(.custom(font_semibold, size: 16))
                    
                    Spacer()
                    
                    Button {
                        currentQuizQuestions = [];
                        currentQuizAnswers = [];
                        currentQuizNumber = 0;
                        currentResult = "";
                        userAnswer = "";
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
