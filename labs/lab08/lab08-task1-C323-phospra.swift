// C323 Mobile App Development
// Lab 08 Task 1 - Phoebe Spratt

var continueGame = true
var lowLim = 0
var uppLim = 0
var chances = 6

func randRange(aMin: Int, aMax: Int) -> Int {
    return Int.random(in: aMin..<aMax)
}

func guessTheNumberGame() {
    print("guess the number!")
    input()
}

func input() {
    print("what is the lower limit?")
    if let usrInput = readLine() {
        if let usrInputLower = Int(usrInput) {
            lowLim = usrInputLower
        }
    } else {
        print("Warning: failed unwrapping an optional!")
    }
    
    print("what is the upper limit?")
    if let usrInput = readLine() {
        if let usrInputUpper = Int(usrInput) {
            uppLim = usrInputUpper
        }
    } else {
        print("Warning: failed unwrapping an optional!")
    }
    
    var number = randRange(aMin: lowLim, aMax: uppLim)
    print("you have 6 chances to guess the nubmer correctly")
    for i in 0...chances {
        print("guess: ")
        
        if let guess = readLine(), let guessInt = Int(guess) {
            if guessInt == number {
                print("correct!")
                return
            } else if guessInt > number {
                print("too high")
            } else if guessInt < number {
                print("too low")
            }
        } else {
            print("Warning: failed unwrapping an optional!")
        }
    }
}

guessTheNumberGame()

while continueGame {
    print("do you want to play another? y or n")
    if let cont = readLine(), cont == "y" {
        guessTheNumberGame()
    } else {
        continueGame = false
        print("bye")
    }
}
