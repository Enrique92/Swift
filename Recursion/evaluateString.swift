//
//  evaluateString.swift
//  Recursion
//
//  Created by Mac on 2019-03-12.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

/*
 * Write a recursive function evaluate that accepts a string
 * representing a math expression and computes its value.
 * - The expression will be "fully parenthesized" and will
 *   consist of + and * on single-digit integers only.
 * - You can use a helper function. (Do not change the original function header)
 * - Recursion
 */

func evaluate(expre: String) -> Int {
    var result = 0
    var right = 0
    var left = 0
    var ope = ""
    //    var pos = 0
    if !expre.contains("(") && !expre.contains(")") {
        if var num = Int(expre) {
            return num
        }
    } else {
        for (key, value) in expre.enumerated() {
            // Get the value of each character
            var ch = [Character](value[key])
            
            if isDigits(expre[value[key]]) {
                // Get the value of the number
                left = Int(expre[ch[key]])
                // Get the value of the operator or if is a "( - )" check it
                ope = expre[ch[key + 1]]
                // Get the value of the next number
                right = Int(expre[ch[key + 2]])
            }
            
            if ope != "(" && ope != ")" {
                if ope == "+" {
                    result = right + left
                    //result = result + Int(value)
                } else if ope == "*" {
                    result = right * left
                    //result = result * Int(value)
                }
            }
            //            pos = pos + 1
        }
    }
    return evaluate(expre: result)
}

// Check if the value is Digit or not
public var isDigits: Bool {
    return CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: self))
}
