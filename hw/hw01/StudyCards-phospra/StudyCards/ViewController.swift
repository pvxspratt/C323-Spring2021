//
//  ViewController.swift
//  StudyCards
//
//  Created by Phoebe on 1/26/21.
//

import UIKit

class ViewController: UIViewController {    
    @IBOutlet var questionLabel: UILabel!     // we use "!" to declare optionals
    @IBOutlet var answerLabel: UILabel!
    var seenQuestion = false
    
    // two methods that will handle UI events:
    @IBAction func showQuestion(_ sender: Any) {
        //print("the Show Question Button has been selected")
        self.questionLabel.text = "how old are you?"
        self.answerLabel.text = "... ? ..."
        seenQuestion = true
    }

    @IBAction func showAnswer(_ sender: Any) {
        //print("the Show Answer Button has been selected")
        if seenQuestion {
            self.answerLabel.text = "I'm about 6 and 1/2 years old (Swift said that)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

