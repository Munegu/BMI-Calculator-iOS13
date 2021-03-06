//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nicolas Villetelle on 30/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pasta !", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good job !", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pasta !", color: #colorLiteral(red: 0.6602398753, green: 0, blue: 0.0843596831, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() ->String{
        return bmi?.advice ?? "There is a bug, we don't have an advice for you :("
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
