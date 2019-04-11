//
//  SumOfSquareNumber2.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-09.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class SumOfSquareNumber2 {
    func sequenceNumber(_ number: Int) -> Int {
        var d = [Int](repeating: 0, count: number + 1)
        for i in 1...number {
            d[i] = i
            let sqrtI = Int(Double(i).squareRoot())
            for j in stride(from: 1, through: sqrtI, by: 1) {
                if (d[i] > d[i - j * j] + 1) {
                    d[i] = d[i - j * j] + 1
                }
            }
        }
        return d[number]
    }
}
