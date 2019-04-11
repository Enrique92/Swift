//
//  2xNTiles.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// dp[n] = dp[n-1] + dp[n-2] + 2 * (dp[n-3] + ... + dp[0])
// = dp[n-1] + dp[n-3] + dp[n-2] + dp[n-3] + 2 * (dp[n-4] + ... dp[0])
// = dp[n-1] + dp[n-3] + dp[n-1]
// = 2 * dp[n-1] + dp[n-3]

class NTiles {
    func nTiles (_ tiles: Int) -> Int {
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
            dp[i] = (dp[i - 1] + dp[i - 2])
        }
        
        return dp[tiles]
    }
}
