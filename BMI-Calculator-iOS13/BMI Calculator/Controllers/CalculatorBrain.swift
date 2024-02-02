//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shreya Bhavsar on 07/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
import SwiftUI

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You look like what you eat, nothing", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You get more social credits for being cool", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "It won't kill to exercise but not doing it will", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? ""
        return advice
    }
    
    func getColor() -> UIColor {
        let bgColor = bmi?.color ?? UIColor.white
        return bgColor
    }
}
