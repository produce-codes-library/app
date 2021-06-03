//
//  ContentView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentNavigation:String = "home";
    @State var currentCollection:String = "";
    @State var currentProduce:String = "";
    @State var currentQuizQuestions:[String] = [];
    @State var currentQuizAnswers:[String] = [];
    @State var currentQuizNumber:Int = 0;
    @State var currentResult:String = "";
    
    @State var produceObjectList:[ProduceObject] = [];
    @State var collectionObjectList:[CollectionObject] = [];

    var body: some View {
        
        ZStack {
            // User has answered a question
            if currentResult != "" {
                
                QuizAnswerView(currentQuizQuestions: $currentQuizQuestions, currentQuizAnswers: $currentQuizAnswers, currentQuizNumber: $currentQuizNumber, currentResult: $currentResult)
            
            }
            
            // User is looking at a quiz question
            else if currentQuizQuestions != [] {
                
                if currentQuizQuestions.count == currentQuizAnswers.count {
                    QuizResultsView(currentQuizQuestions: $currentQuizQuestions, currentQuizAnswers: $currentQuizAnswers, currentQuizNumber: $currentQuizNumber, currentResult: $currentResult, produceObjectList: $produceObjectList)
                }
                
                else {
                    QuizQuestionView(currentQuizQuestions: $currentQuizQuestions, currentQuizAnswers: $currentQuizAnswers, currentQuizNumber: $currentQuizNumber, currentResult: $currentResult, produceObjectList: $produceObjectList)
                }
            }
            
            // User is looking at a specific item or collection
            else if currentProduce != "" {
                ProduceSummaryView(currentProduce: $currentProduce, produceObjectList: $produceObjectList)
            }
            else if currentCollection != "" {
                CollectionSummaryView(
                    collectionName: $currentCollection,
                    currentQuizQuestions: $currentQuizQuestions,
                    currentProduce: $currentProduce,
                    produceObjectList: $produceObjectList, collectionObjectList: $collectionObjectList);
            }
            
            // User is just navigating through the app
            else if produceObjectList.count > 0 && collectionObjectList.count > 0 {
                if currentNavigation == "home" {
                    HomeView(currentNavigation: $currentNavigation, currentCollection: $currentCollection,currentProduce: $currentProduce, produceObjectList: $produceObjectList, collectionObjectList: $collectionObjectList)
                }
                else if currentNavigation == "search" {
                    SearchView(currentNavigation: $currentNavigation,currentProduce: $currentProduce,produceObjectList: $produceObjectList)
                }
                else if currentNavigation == "learn" {
                    LearnView(currentNavigation: $currentNavigation, currentCollection: $currentCollection, collectionObjectList: $collectionObjectList)
                }
                else if currentNavigation == "info" {
                    InfoView(currentNavigation: $currentNavigation)
                }
                else {
                    SearchView(currentNavigation: $currentNavigation,
                               currentProduce: $currentProduce, produceObjectList: $produceObjectList)
                }
            }
        }
        .onAppear() {
            Backend().getJSONObjects(url : "https://ryan-schreiber.github.io/produce-codes-library/plu_data.json") { (objects) in
                self.produceObjectList = objects;
            }
            Backend().getJSONObjects(url : "https://ryan-schreiber.github.io/produce-codes-library/collections_data.json") { (objects) in
                self.collectionObjectList = objects;
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
