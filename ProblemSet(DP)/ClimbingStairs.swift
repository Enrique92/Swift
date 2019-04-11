//
//  ClimbingStairs.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class ClimbingStairs {
    
    func climbingStairs(_ number: Int) -> Int {
        var d = [Int](repeating: 0, count: number)
        
        if(number == 0) {
            return 0
        } else if(number == 1) {
            return 1
        } else if(number == 2) {
            return 2
        }
        
        d[0] = 1
        d[1] = 2
        
        for i in 2..<number {
            d[i] = d[i-1] + d[i-2]
        }
        
        return d[number-1]
    }
}
