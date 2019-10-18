import UIKit

// Text Fields
let billAmount = UITextField()
let tipPercentage = UITextField()
let splitOfPeople = UITextField()


// Simulate User
billAmount.text = "100"
tipPercentage.text = "15"
splitOfPeople.text = "2"

// Get Actual Strings From Each Text Field
// (force unwrapping the optional strings contained in each text field)
let billAmountAsString = billAmount.text!
let tipPercentageAsString = tipPercentage.text!
let splitOfPeopleAsString = splitOfPeople.text!

// Convert strings to Double Data type
let billAmountAsDouble = Double(billAmountAsString)!
let tipPercentageAsDouble = Double(tipPercentageAsString)!
let splitOfPeopleAsDouble = Double(splitOfPeopleAsString)!

// Calculate the tip
let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDouble
