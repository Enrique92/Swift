//
//  NTiles-2.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class NTiles2 {
    func nTiles2 (_ tiles: Int) -> Int {
        var dp = [Int](repeating: 0, count: tiles + 1)
        
        if (tiles == 1) {
            return 1
        }
        if (tiles == 2) {
            return 2
        }
        
        dp[0] = 1
        dp[1] = 1
        dp[2] = 2
        
        for i in 3...tiles {
            //dp[i] = (2 * dp[i - 1] + dp[i])
            // 𝑇𝑛=𝑇𝑛−1+2𝑇𝑛−2
            dp[i] = (dp[i] ^ (i - 1) + 2 * i ^ (i - 2))
            //dp[i] = ((2 ^ dp[i + 1]) - (-1) ^ dp[i] + 1) / 3
        }
        
        return dp[tiles]
    }
}
