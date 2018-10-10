//
//  BMICalculator.swift
//  BMI Calculator
//
//  Created by Osama Bin Bashir on 10/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import Foundation

class BMICalculator{
    
    func calculateBMI(weight : Double, height : Double)->String{
        let bmi = weight/(height * height)
        return getBMIType(bmi: bmi.rounded())
    }
    
    private func getBMIType(bmi : Double)->String{
        var result = "Your BMI is \(bmi). "
        if(bmi > 24.9){
            result +=  "You are OVER WEIGHT"
        }else if(bmi < 18.5){
            result +=  "You are UNDER WEIGHT"
        }else{
            result +=  "You are PERFECT"
        }
        
        return result
    }
}
