//
//  ViewController.swift
//  TabbedGuessingGame
//
//  Created by Phoebe on 2/23/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var hiddenNumLabel: UILabel!
    @IBOutlet var curRandGuessLabel: UILabel!
    @IBOutlet weak var guessingTextField: UITextField!
    
    var myAppDelegate: AppDelegate?
    var myGuessingGameModel: GuessingGameModel?
    
    func guessingGame() {
        self.myGuessingGameModel?.magicNumber()
        self.myGuessingGameModel?.game()
        let lResponse: String = self.myGuessingGameModel!.getRes()
        self.curRandGuessLabel.text = lResponse
    }
    
    
    
    
    @IBAction func enterGuess(_ sender: AnyObject) {
        // ignore any non-integer-numeric input entered by user into
        //  the UITextField and ONLY convert integer numbers into an
        //  Int type
        // then ask the model to compare the integer the user entered
        //  to the random number ot be guessed
        // Finally it should update the 2nd labed to say too high, too
        //  low, or correct
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myGuessingGameModel = self.myAppDelegate?.myGuessingGameModel
        
        self.myGuessingGameModel?.setGuess(string: "\(self.guessingTextField.text)")
        
        //let lResponse: String = self.myGuessingGameModel!.getRes()
        //self.curRandGuessLabel.text = lResponse
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myGuessingGameModel = self.myAppDelegate?.myGuessingGameModel
        self.guessingTextField.text = self.myGuessingGameModel!.getGuess()
    }


}

