//
//  PrettyNumber.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// Define the subproblem
// - The number of pretty numbers -> d[N][L] = # of pretty numbers with length and the last digit L
// Recurrence
// - d[N][L] = d[N-1][L-1] + d[N-1][L+1] (where 1 <= L <= 8)

class PrettyNumber {
    
    func prettyNum(_ number: Int) -> Int {
        var d = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)
        var ans = 0
        
        for i in 1..<10 {
            d[1][i] = 1
        }
        
        for j in 2..<number {
            for k in 0..<10 {
                d[j][k] = 0
                if (j >= 1) {
                    d[j][k] += d[j-1][k-1]
                } else if (j <= 8) {
                    d[j][k] += d[j-1][k+1]
                }
            }
        }
        
        for m in 0..<10 {
            ans += d[number][m]
        }
        
        // Return the answer
        return ans
    }
}
