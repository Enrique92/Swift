//
//  MakeOne.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class MakeOne {
    
    func makeOne(_ number: inout Int) -> Int {
        var d = [Int]()
        
        d[1] = 0
        for i in d {
            d[i] = d[i - 1] + 1
            if (number % 2 == 0 && d[i] > d[i / 2] + 1) {
                d[i] = d[i / 2] + 1
            } else if (number % 3 == 0 && d[i] > d[i / 3] + 1) {
                d[i] = d[i / 3] + 1
            }
        }
        return d[number]
    }
}
