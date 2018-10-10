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
        var result = ""
        if(weight > 0 && height > 0){
            let bmi = weight/(height * height)
            result  = getBMIType(bmi: bmi.rounded())
        }else{
            result = "Height or Weight can't be zero"
        }
        return result
    }
    
    private func getBMIType(bmi : Double)->String{
        var result = ""
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
