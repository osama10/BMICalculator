//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Osama Bin Bashir on 10/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
   
    let bmiCalculator = BMICalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = ""
        
    }


    @IBAction func didTapOnCalculateBMIButton(_ sender: UIButton) {
        let weight = Double(weightTextField.text!) ?? 0.0
        let hegiht = Double(heightTextField.text!) ?? 0.0
        
        resultLabel.text = bmiCalculator.calculateBMI(weight: weight, height: hegiht)
    }
    
}

