//: Playground - noun: a place where people can play

import UIKit

// CONSTANTS
let constValue = "A constant value"
//constValue = "trying to modify" // gives error

let constInt = 10
let constBool = true
let constDouble = 10.12345

// VARIABLES
var varValue = "A variable value"
varValue = "Can be modified"

var intVar = 10
intVar = 15
var boolVar = true
boolVar = false
var doubleVar = 12.1234
doubleVar = 23.3456

// PRINT function
print("Constant Value: " + constValue)

// STRING INTERPOLATION
var age = 25
var str = "Age is \(age)"

// FUNCTIONS

func sampleFunc() {
    print("This is a sample function")
}

sampleFunc()

// TUPLES

func square(number : Int) -> (number: Int, square: Int){
    return (number, number * number)
}

var squareResult = square(5)
squareResult.number
squareResult.square

// OPTIONALS

var anOptionalVar : String?
anOptionalVar = "has a value"
anOptionalVar = nil //nil again

if let hasValue = anOptionalVar {
    // anOptionalVar is not nil. Its value is unwrapped in hasValue
    print(hasValue)
} else {
    // anOptionalVar is nil
    print("anOptionalVar is nil")
}

// IMPLICITLY UNWRAPPED OPTIONALS
var otherOptional : String!

// ERROR HANDLING

func canThrowError() throws {
    
}

do {
    try canThrowError()
    // no error thrown
} catch {
    // error thrown
}

// ARRAYS

var simpleArray = [Int]()
simpleArray.append(1)
simpleArray.append(2)
print("Array count: \(simpleArray.count)")

// SETS
var simpleSet : Set = ["Violet", "Indigo", "Blue"]
for color in simpleSet {
    print(color)
}

// DICTIONARIES

var simpleDictionary = [String : String]()
simpleDictionary["name"] = "Pratima"
simpleDictionary["lastName"] = "Umbardand"

for value in simpleDictionary.values {
    print(value)
}

simpleDictionary.removeValueForKey("name")

