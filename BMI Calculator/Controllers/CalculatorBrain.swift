//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vedran Novak on 26.07.2023..
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, 2)
        print(bmiValue)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies.", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPLace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPLace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error 404, advice not found"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
