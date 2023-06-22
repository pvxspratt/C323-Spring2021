// C323 Mobile App Development - Mitja Hmeljak Spring 2021
//
//  Lab 08: more examples in the Swift programming language
//
//  Note: the following Swift code will run correctly
//        from swift command-line,
//        but it won't do much as a Playground in Xcode.
//
//  To run from command line, simply type in a Terminal.app window:
//      swift lab-08-C323-Spring-2021-read-line.swift



// some useful Swift types, methods, etc. for Lab 08


// -------------------------------------------------------------------

// method returning a positive integer, within bounds:
//
func randRange (aMin: Int , aMax: Int) -> Int {

    // choose the version you think more useful
    //   i.e. including boundary values or not:
    return Int.random(in: aMin..<aMax)
    
    // for more details, see the Swift Int class documentation at:
    //    https://developer.apple.com/documentation/swift/int
    // and the Range and ClosedRange types in Swift:
    //    https://developer.apple.com/documentation/swift/range
    //    https://developer.apple.com/documentation/swift/closedrange
}

print("----- Int.random, Range and/or ClosedRange in Swift ----- :")

// example for getting user input from command-line,
//    using the readLine() method, which exists from Swift 2 onward:

for i in 0...10 {
    print("At iteration \(i) of the for loop. Please enter an integer:")

    // this is how we properly unwrap an optional value:
    if let myText = readLine() {
        print("comparing \(myText) to \(randRange(aMin: 0,aMax: 10))")

        // another correct unwrap of an optional value:
        if let integ = Int(myText) {
            print ("the integer version of your input is: \(integ)")
        } else {
            // of course, this may crash:
            print ("the integer non-optional version of your input is: \(Int(myText)!)")
        }
    } else {
        print("Warning: failed unwrapping an optional!")
    }

} // end of for loop


// -------------------------------------------------------------------


// example defining an array in Swift:
//

print("----- Arrays in Swift ----- :")

var myArray = [0, "hello", "bye"] as [Any]

print ("this is how we print the content of an array:")
print (myArray.description)
print ("and this array has \(myArray.count) elements")

// -------------------------------------------------------------------

// example defining a dictionary in Swift:
//

print("----- Dictionaries in Swift ----- :")

var myDictionary = [0: true,
                    false: "hello",
                    "three": "four"] as [AnyHashable : Any]

print ("this is how we print the content of a dictionary:")
print (myDictionary.description)
print ("and this dictionary has \(myDictionary.count) elements")

// -------------------------------------------------------------------
