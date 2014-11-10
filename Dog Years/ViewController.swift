//
//  ViewController.swift
//  Dog Years
//
//  Created by David Grevink on 2014-11-09.
//  Copyright (c) 2014 David Grevink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearTextField: UITextField!
    @IBOutlet weak var humanYearLabel: UITextField!
    let conversionConstantUntil2 = 10.5;
    let conversionConstantAfter2 = 4.0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertDogYearsToHumanYearsButton(sender: AnyObject) {
        var dogYears : Double? = (dogYearTextField.text as NSString).doubleValue;
        
        if (dogYears == nil) {
            humanYearLabel.text = "Error ! Please enter an integer"
            humanYearLabel.textColor = UIColor.redColor()
        }
        else {
            
            var humanYears :Double = 0;
            if (dogYears <= 2) {
                humanYears = dogYears! * conversionConstantUntil2
            }
            else {
                humanYears = (2 * conversionConstantUntil2) + Double(dogYears! - 2) * conversionConstantAfter2
            }
            humanYearLabel.text = "In human years, your dog is \(humanYears) years old.";
            humanYearLabel.textColor = UIColor.brownColor()
        }
        
        
    }

}

