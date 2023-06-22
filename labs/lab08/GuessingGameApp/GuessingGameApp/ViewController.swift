//
//  ViewController.swift
//  GuessingGameApp
//
//  Created by Phoebe on 2/13/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var hiddenNumLabel: UILabel!
    @IBOutlet var curRandGuessLabel: UILabel!
    
    // numbers
    var hiddenNumber = Int.random(in: 0...30)
    var curRandGuess = 0
    var lowerThan = 0
    var higherThan = 0
    
    // funcitons
    /*
    func randRange(aMin: Int, aMax: Int) -> Int {
        return Int.random(in: aMin..<aMax)
    }
    */
    
    
    func guessingGame() {
        //self.hiddenNumber = Int.random(in: 0...30)
        self.curRandGuess = Int.random(in: 0...30)
        guessingNow()
    }
    
    func guessingNow() {
        if self.hiddenNumber == self.curRandGuess {
            self.hiddenNumLabel.text = "\(self.hiddenNumber)"
        } else {
            self.hiddenNumLabel.text = "???"
        }
    }
    
    @IBAction func lowerNum(_ sender: Any) {
        self.curRandGuess = Int.random(in: 0...self.curRandGuess)
        self.curRandGuessLabel.text = "\(self.curRandGuess)"
        guessingNow()
    }
    
    @IBAction func higherNum(_ sender: Any) {
        self.curRandGuess = Int.random(in: self.curRandGuess...30)
        self.curRandGuessLabel.text = "\(self.curRandGuess)"
        guessingNow()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

