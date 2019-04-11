//
//  OneTwoThree.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class OneTwoThree {
    
    func oneTwoThree() -> Int {
        let testCases = Int(readLine()!)!
        var cont = 0
        let number = [Int]()
        
        repeat {
            //number = [Int](readLine()!)!
            cont += 1
        } while (cont == testCases - 1)
        
        var dp = [Int](repeating: 0, count: testCases + 1)
        
        // base cases
        dp[0] = dp[1]
        dp[1] = dp[2]
        dp[2] = 1
        dp[3] = 2
        // iterate for all values from 3 to n
        for i in number {
            dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3];
        }
        cont += 1
        
        return dp[testCases]
    }
}
