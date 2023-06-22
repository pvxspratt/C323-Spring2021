//
//  StudyCardModel.swift
//  TabbedStudyCards
//
//  Created by Phoebe on 2/18/21.
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
                        "What's the best vodka?"]
    var answers = ["14", "Mali", "Wheels", "Neil Finn", "Oasis", "39", "Absolut"]

    init() {
        // any useful constructor code could go here
    }
    
    func getNextQuestion() -> String {
        self.currentQuestionIndex = self.currentQuestionIndex + 1

        // prevents the app from crashing when reaching past array's length
        // wraps around to show the questions again
        if self.currentQuestionIndex >= questions.count {
            self.currentQuestionIndex = 0
        }

        return self.questions[self.currentQuestionIndex]
    }
    
    func getAnswer() -> String {
        return self.answers[self.currentQuestionIndex]
    }
    
    
    // HW03
    // obtain current question string from the model object, without
    //  advancing to next question, you need to implement a new
    //  getCurrentQuesiton() method in StudyCardModel class
    func getCurrentQuestion() -> String {        
        return self.questions[self.currentQuestionIndex]
    }
    
    // similarly, need to implement 2 new methods setCurrentQuestion(pString: String)
    //  and setCurrentAnswer(pString: String) in the StudyCardModel class,
    //  to set the current question and answer
    func setCurrentQuestion(pString: String) {
        self.questions[self.currentQuestionIndex] = pString
    }
    
    func setCurrentAnswer(pString: String) {
        self.answers[self.currentQuestionIndex] = pString
    }

    
    
} // end of class StudyCardModel
