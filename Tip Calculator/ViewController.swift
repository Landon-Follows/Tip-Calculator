//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Landon Follows on 2019-10-18.
//  Copyright © 2019 Landon Follows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    // The Tip Amount
    var tipPercent = Double(0.0)
    
    // The Bill Amount
    @IBOutlet weak var amountOfBill: UITextField!
    
    // The Amount of People
    @IBOutlet weak var amountOfPeople: UITextField!
    
    // Total Tip Label
    @IBOutlet weak var totalTipLabel: UILabel!
    
    // Tip Per Person Label
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    
    // Title Label
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //MARK: Methods
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculate() {
        
        // Take text field and turn them into strings
        
        // If Nothing In String, Tell Person to enter one
        
        guard let billAmountAsString = amountOfBill.text, amountOfBill.text != ""
            
        else {
            titleLabel.text = " Please Enter All Values"
            return
        }
        
        // If Nothing In String, Tell Person to enter one
        
        guard let amountOfPeopleAsString = amountOfPeople.text, amountOfPeople.text != ""
            
        else{
            titleLabel.text = "Please Enter All Values"
            return
        }
        
        // Take strings and turn them into doubles
        
        // If Unable to Convert to a Double, Show Message
        
        guard let billAmountAsDouble = Double(billAmountAsString)
            
        else{
            titleLabel.text = "Enter Proper Values"
            return
        }
        
        // If Unable to Convert to a Double, Show Message
        
        guard let amountOfPeopleAsDouble = Double(amountOfPeopleAsString)
        
        else{
            titleLabel.text = "Enter Usable Values"
            return
        }
        
        // Make Title Back
        
        titleLabel.text = "Tip Calculator"
        
        // Calculate tip amount
        
        let tipAmountInDollars = billAmountAsDouble * tipPercent
        
        // Round the value to 2 decimal places
        
        let roundedtipAmountInDollars = (round(100*tipAmountInDollars)/100)
        
        // Change tip amount into a string
        
        let tipAmountInDollarsasString = String(roundedtipAmountInDollars)
        
        // Share information to the user Main
        
        totalTipLabel.text = "Total Tip: \(tipAmountInDollarsasString)$"
        
        // Calculate tip per person
        
        let tipAmountPerPerson = tipAmountInDollars/amountOfPeopleAsDouble
        
        // Round the value to 2 decimal places
        
        let roundedTipPerPerson = (round(100*tipAmountPerPerson)/100)
        
        // Change tip per person into a string
        
        let tipPerPersonasString = String(roundedTipPerPerson)
        
        // Share information to the user interface
        
        tipPerPersonLabel.text = "Tip Per Person: \(tipPerPersonasString)$"
        
        
    }
    
    @IBAction func tipPercent(_ sender: Any) {
        tipPercent = "Double"
        calculate()
      }
      
}

