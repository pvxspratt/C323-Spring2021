//
//  ViewController.swift
//  StudyCardsWithModelWithModel
//
//  Created by Phoebe on 1/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    // two properties for the ViewController class
    @IBOutlet var questionLabel: UILabel!    
    @IBOutlet var answerLabel: UILabel!
    var seenQuestion = false
    
    // create one instance of the Model class:
    //  (not the use of "let" to define a constant)
    let myStudyCardModel = StudyCardModel()
    
    // two methods that will handle button events:
    // @IBAction here tells Xcode to list these methods as
    //      "available actions", and they can afterwards be connected
    //      using InterfaceBuiler (i.e. the storyboard editor
    //      used within Xcode), to buttons in the Main.storyboard:
    
    @IBAction func showQuestion(_ sender: Any) {
        seenQuestion = true
        
        // here's some starting code for the showQuestion() method
        
        // (note the use of "let" to define a constant)
        let lQuestion: String = self.myStudyCardModel.getNextQuestion()
        
        self.questionLabel.text = lQuestion
        
        // TODO: every time a new question is shown,
        //          the answer label needs to be cleared!
        self.answerLabel.text = "???"
        
    }

    @IBAction func showAnswer(_ sender: Any) {
        // TODO: look at the showQuestion() method above,
        //          and implement your showAnswer() method similarly!
        let lAnswer: String = self.myStudyCardModel.getAnswer()
        
        if seenQuestion {
            self.answerLabel.text = lAnswer
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

