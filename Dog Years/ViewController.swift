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
    let conversionConstant = 7;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertDogYearsToHumanYearsButton(sender: AnyObject) {
        var dogYears : Int? = dogYearTextField.text.toInt();
        
        if (dogYears == nil) {
            humanYearLabel.text = "Error ! Please enter an integer"
            humanYearLabel.textColor = UIColor.redColor()
        }
        else {
            var humanYears = dogYears! * conversionConstant;
            humanYearLabel.text = "In human years, your dog is \(humanYears) years old.";
            humanYearLabel.textColor = UIColor.brownColor()
        }
        
        
    }

}

