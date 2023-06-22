//
//  EditCardsViewController.swift
//  TabbedStudyCards
//
//  Created by Phoebe on 2/19/21.
//  -- In class, reached like step 17?

import UIKit

class EditCardsViewController: UIViewController {

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    var myAppDelegate: AppDelegate?
    var myStudyCardModel: StudyCardModel?
    
    
    // obtain current answer string from the model object, use the
    //  getAnswer() method in same way as StudyCardViewController
    func getAnswer() -> String {
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myStudyCardModel = self.myAppDelegate?.myStudyCardModel
        return self.myStudyCardModel!.getAnswer()
    }
    
    // obtain current question string from the model object, without
    //  advancing to next question, you need to implement a new
    //  getCurrentQuesiton() method in StudyCardModel class

    // similarly, need to implement 2 new methods setCurrentQuestion(pString: String)
    //  and setCurrentAnswer(pString: String) in the StudyCardModel class,
    //  to set the current question and answer
  
    // once you have the current question and answer strings( as from steps a and b),
    //  in EditCardsViewController.swift you need to modify the viewDidLoad() method
    //  to set the two text field's text content
  
    // then need to implement the buttonOKAction() method to invoke the two set...()
    //  methods (as from step c above)

    @IBAction func buttonOKAction(sender: AnyObject) {
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myStudyCardModel = self.myAppDelegate?.myStudyCardModel
        

        self.myStudyCardModel?.setCurrentQuestion(pString: "\(self.questionTextField.text)")
        self.myStudyCardModel?.setCurrentAnswer(pString: "\(self.answerTextField.text)")

        
        
        // print("self.questionTextField.text = \(self.questionTextField.text)")
        // print("self.answerTextField.text = \(self.answerTextField.text)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myStudyCardModel = self.myAppDelegate?.myStudyCardModel
        self.questionTextField.text = self.myStudyCardModel!.getCurrentQuestion()
        
        self.answerTextField.text = self.getAnswer()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
