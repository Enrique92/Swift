//
//  main.swift
//  Problem_Graph
//
//  Created by Enrique on 2019-03-19.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation


func cyclingPermutation() {
    var n = Int(readLine()!)!
    var a: [Int] = [Int(readLine()!)!]
    var pos = -1
    var numberOfPermutations = 0

    pos += 1
    a[n] = pos
    if pos == a.count - 1 {
        // increase the number of permutations
        //numberOfPermutations += 1
    } else {
        for i in 0..<a.count {
            if a[i] == 0 {
                cyclingPermutation()
                // increase the number of permutations
                numberOfPermutations += 1
            }
        }
    }
    pos -= 1
    a[n] = 0
    print("The number of permutations are: \(numberOfPermutations)")
}

// Call the method
cyclingPermutation()

func repeatingSequence() {
    print("Type the first number:")
    var number = readLine()!
    var num = Int(number)!
    var array = number.compactMap {
        Int(String($0))
    }
    print("Type the power number:")
    let exponent = Int(readLine()!)!
    var sum: [Int] = []
    var sumTotal = 0
    var contTimes = 0

    for (key, value) in array.enumerated() {
        print("array: \(array)")
        print("sum: \(sum)")
        // Count the number of times that iterate
        if ((array != sum) || (sum.isEmpty)) {
            sum.append(power(value, exponent))
            contTimes += 1
        }
        for total in sum {
            print("Total: \(total)")
            sumTotal += total
        }

        print("Value: \(value)")
        print("sumTotal: \(sumTotal)")
    }
    print("The sum is: \(sum)")
    // The new number will the the (number)exponent
    array = sum
    print("The number the sequences that don't repeat are: \(contTimes)")
}

func power(_ base: Int, _ exponent: Int) -> Int {
    var result = 1
    for _ in 0..<exponent {
        result *= base
    }
    return result
}

// Printing the number of permutations
//repeatingSequence()
