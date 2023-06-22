//
//  StudyCardViewController.swift
//  TabbedStudyCards
//
//  Created by Phoebe on 2/18/21.
//

import UIKit

class StudyCardViewController: UIViewController {
    
    // two properties for the StudyCardViewController class
    @IBOutlet var questionLabel: UILabel!    
    @IBOutlet var answerLabel: UILabel!
    var seenQuestion = false
    
    // create one instance of the Model class:
    //  (not the use of "let" to define a constant)
    
    // the single M-V-C design has to be modified
    //      to accommodate multiple Controllers:
    // let myStudyCardModel = StudyCardModel()
    
    // instantiating the Model for an entire app
    //  inside one Controller, when the design includes
    //  more thatn one Controller, won't work.
    
    // a variable to contain a reference to the AppDelegate:
    var myAppDelegate: AppDelegate?
    // a variable to contain a reference to the data Model:
    var myStudyCardModel: StudyCardModel?
    
    
    
    
    @IBAction func showQuestion(_ sender: Any) {
        
        // 1) obtain a reference to the AppDelegate:
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        // 2) now that we have a reference to the AppDelegate,
        //      we can obtain a reference to the Model instance:
        self.myStudyCardModel = self.myAppDelegate?.myStudyCardModel
        
        // from the model, obtain the next question - line 56
        // var lQuestion: String = self.myStudyCardModel!.getNextQuestion()
      
        seenQuestion = true

        // (note the use of "let" to define a constant)
        let lQuestion: String = self.myStudyCardModel!.getNextQuestion()
        
        self.questionLabel.text = lQuestion
        
        // clears the answer label every time a new question is shown
        self.answerLabel.text = "???"
        
    }

    @IBAction func showAnswer(_ sender: Any) {
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myStudyCardModel = self.myAppDelegate?.myStudyCardModel
        // var lAnswer: String = self.myStudyCardModel!.getAnswer()
        let lAnswer: String = self.myStudyCardModel!.getAnswer()
        
        if seenQuestion {
            self.answerLabel.text = lAnswer
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

