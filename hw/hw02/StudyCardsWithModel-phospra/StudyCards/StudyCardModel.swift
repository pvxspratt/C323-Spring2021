//
//  StudyCardModel.swift
//  StudyCardsWithModel
//
//  Created by Phoebe on 2/10/21.
//

import Foundation

class StudyCardModel {
    // instance variables, initialized right here
    var currentQuestionIndex = 0
    var questions = ["How much is 7+7?",
                        "In what country is Timbukto?",
                        "What rotates when you ride a bike?",
                        "Who is the lead singer for Crowded House?",
                        "From which band did Lil Peep sample for 'yesterday'?",
                        "How old is Homer Simpson?",
                        "Who is potato girl?",
                        "What's the best vodka?"]
    var answers = ["14", "Mali", "Wheels", "Neil Finn", "Oasis", "39", "Sasha rip", "Absolut"]

    init() {
        // any useful constructor code could go here
    }
    
    func getNextQuestion() -> String {
        self.currentQuestionIndex = self.currentQuestionIndex + 1
        
        // TODO: make sure that the app doesn't crash when
        //          reaching past the end of the array's length!
        // HINT: you can use the .count property
        //          of any array object, to check its length
        if self.currentQuestionIndex >= questions.count {
            self.currentQuestionIndex = 0
        }

        return self.questions[self.currentQuestionIndex]
    }
    
    func getAnswer() -> String {
        return self.answers[self.currentQuestionIndex]
    }
    
    

    
    
} // end of class StudyCardModel
