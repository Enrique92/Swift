//
//  DecodeWays.swift
//  ProblemSet(DP)
//
//  Created by Enrique on 2019-04-10.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

/*
 'A' -> 1
 'B' -> 2
 ...
 'Z' -> 26
 */
class DecodeWays {
    func numDecodings(_ s: String) -> Int {
        // Put in a array
        let letter = Array(s)
        var dp = Array(repeating: 0, count: letter.count)
        var result = 0
        
        for i in 0..<dp.count {
            // If the character is not an ASCII value exit
            if (UnicodeScalar(dp[i]) != nil) {
                // If the string length is 1 get the value
                if (dp.count == 1) {
                    // Get the value in ASCII of the first character
                    result = 1
                } else if (dp.count < 1) {
                    //let value = Character(UnicodeScalar(dp[i])!)
                    let value = Array(s.unicodeScalars)[i].value
                    if (value.description != nil) {
                        result += 1
                    }
                }
            }
        }
        return result
    }
}
