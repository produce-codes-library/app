//
//  QuizAnswerView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct QuizAnswerView: View {
    
    @Binding var currentQuizQuestions:[String];
    @Binding var currentQuizAnswers:[String];
    @Binding var currentQuizNumber:Int;
    @Binding var currentResult:String;
    
    var body: some View {
        
        ZStack {
        
            if currentResult == "Correct!" {
                Rectangle()
                    .foregroundColor(.green)
                    .ignoresSafeArea()
            }
            else {
                Rectangle()
                    .foregroundColor(.red)
                    .ignoresSafeArea()
            }
            
            VStack {
                
                if currentResult == "Correct!" {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: contentWidth, height: contentWidth, alignment: .center)
                        .foregroundColor(.white)
                }
                else {
                    Image(systemName: "xmark.circle.fill")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: contentWidth, height: contentWidth, alignment: .center)
                        .foregroundColor(.white)
                }

                Text(currentResult)
                    .foregroundColor(.white)
                    .font(.custom(font_semibold, size: 40))
                
                Button {
                    currentQuizNumber += 1;
                    currentResult = "";
                } label : {
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(25)
                        
                        Text("Next")
                            .foregroundColor(.black)
                            .font(.custom(font_semibold, size: 16))
                    }
                    
                }
                
            }
            
            
        }
        
    }
}

//struct QuizAnswerView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizAnswerView()
//    }
//}
