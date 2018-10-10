//
//  BMICalculatorTest.swift
//  BMI CalculatorTests
//
//  Created by Osama Bin Bashir on 10/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import XCTest
@testable import BMI_Calculator
class BMICalculatorTest: XCTestCase {
    var bmiCalculator : BMICalculator?
    
    override func setUp() {
        super.setUp()
        bmiCalculator = BMICalculator()
    }
    
    override func tearDown() {
        super.tearDown()
        bmiCalculator = nil
    }
    
    func testCalculateBMI(){
        let result1 = bmiCalculator?.calculateBMI(weight: 70, height: 1.63)
        let result2 = bmiCalculator?.calculateBMI(weight: 60, height: 1.63)
        let result3 = bmiCalculator?.calculateBMI(weight: 40, height: 1.63)
        let result4 = bmiCalculator?.calculateBMI(weight: 40, height: 0)
      


        assert(result1! == "You are OVER WEIGHT" , "Test case1 failed")
        assert(result2! == "You are PERFECT" , "Test case2 failed")
        assert(result3! == "You are UNDER WEIGHT" , "Test case3 failed")
        assert(result4! == "Height or Weight can't be zero" , "Test case4 failed")


    }

    
}
