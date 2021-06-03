//
//  TestYourKnowledgeButtonView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct TestYourKnowledgeButtonView: View {
    
    @State var text:String = "Test your knowledge!";
    @State var width:CGFloat = 200;
    @State var height:CGFloat = 50;
    @State var foregroundColor:Color = .white;
    @State var backgroundColor:Color = .blue;
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: self.width, height: self.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(self.height/2)
                .foregroundColor(backgroundColor)
        
            Text(self.text)
                .foregroundColor(self.foregroundColor)
                .font(.custom(font_regular, size: 16))
        }
    }
}

struct TestYourKnowledgeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TestYourKnowledgeButtonView()
    }
}
