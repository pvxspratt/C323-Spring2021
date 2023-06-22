//
//  GuessingGameModel.swift
//  TabbedGuessingGame
//
//  Created by Phoebe on 2/23/21.
//

import Foundation

class GuessingGameModel {
    var lowLim = 0
    var uppLim = 30
    var guessInput = ""
    var number = 0
    
    var res = ""
    var low = "too low"
    var cor = "yes, correct"
    var hi = "too high"
    
    func isInt(string: String) -> Bool {
        return Int(string) != nil
    }
    
    func randRange(aMin: Int, aMax: Int) -> Int {
        return Int.random(in: aMin..<aMax)
    }
    
    func magicNumber() -> Int {
        number = randRange(aMin: lowLim, aMax: uppLim)
        return number
    }
    
    func game() {
        //number = randRange(aMin: lowLim, aMax: uppLim)
        
        if(isInt(string: self.getGuess())) {
            if let guessInt = Int(self.guessInput) {
                if guessInt == number {
                    res = self.cor
                    return
                } else if guessInt > number {
                    // too high
                    res = self.hi
                } else if guessInt < number {
                    // too low
                    res = self.low
                }
            }
        }
            
    }
    
    func getRes() -> String {
        return self.res
    }
    
    func setGuess(string: String) {
        self.guessInput = string
    }
    
    func getGuess() -> String {
        return self.guessInput
    }
    
    func setNum(num: Int) {
        self.number = num
    }
    
    func getNum() -> Int {
        return self.number
    }
    
    

    
    
    /*
    var hiddenNumber = Int.random(in: 0...30)
    var curRandGuess = 0
    var lowerThan = 0
    var higherThan = 0
    
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

 */
}
