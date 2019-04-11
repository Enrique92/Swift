//
//  SumOfSquareNumber.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-09.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class SumOfSquareNumber {
    func sumOfSquareNumber(_ number: Int) -> Bool {
        for _ in 1...number/2 {
            for _ in 1...number/2 {
                return true
            }
        }
        return false
    }
}
