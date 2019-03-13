//
//  main.swift
//  Recursion
//
//  Created by Mac on 2019-03-08.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// power(base, exponent): -> base*exponent
func power(_ base: Int,_ exponent: Int) -> Int {
    if exponent == 0 {
        return 1
    }
    return power(base, exponent - 1) * base
}

// isPalindrom(string)
// Check if we read the strin foward and backward is the same
// racecar
func isPalindrom(_ word: String) -> Bool {
    // Get the last character of the word
    //var lastIndex = word.index(before: word.endIndex)
    if word.count <= 1 {
        print("The word is a palindrom")
        return true
    } else if let first = word.first, let last = word.last, first == last {
        let nextStart = word.index(word.startIndex, offsetBy: 1)
        let nextEnd = word.index(word.endIndex, offsetBy: -1)
        return isPalindrom(String(word[nextStart..<nextEnd]))
    } else {
        print("The word is not a palindrom")
    }
    return false
}

// print without the \n
// print("Hello", terminator: "")
//isPalindrom("racecar")

func printBinary(_ num: Int) {
    if num < 2 {
        print("The binary number is", num, terminator: "")
        return
    }
    printBinary(num / 2)
    print(num % 2, terminator: "")
}

//printBinary(22)
print("")

// Open a file and read values
func reverseLines() {
    let content = try! String(contentsOfFile: "/Users/mac2018/Xcode/Swift/Recursion/File.txt", encoding: .utf8)
    let lines = content.split(separator: "\n")
    print(lines.joined(separator: ", "))
}

//reverseLines()

// Exhaustive search
//func printBinaryNew(_ digits: Int, _ prefix: String = "") {
//    if digits == 0 {
//        print(prefix)
//    } else {
//        printBinary(digits - 1, prefix + "0")
//        printBinary(digits - 1, prefix + "1")
//    }
//}

func printDecimals(_ digits: Int, _ prefix: String = "") {
    if digits == 0 {
        print(prefix)
    } else {
        for i in 0..<10 {
            printDecimals(digits - 1, prefix + String(i))
        }
    }
}

//printDecimals(3)

// Prove the excercise
//print(evaluate(expre: "((5 + 2) * ((7 + 2) * 2))"))


let arrayToSort = [10, 22, 50, 9, 33, 41, 21, 40, 80, 60, 26]
//bubbleSort(arrayToSort)

let array = [ 101, 9, 3, 0, 12, 50, 33, 24]
quickSort(array, 0, array.count)
