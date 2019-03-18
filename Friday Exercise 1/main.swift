//
//  main.swift
//  Friday Exercise 1
//
//  Created by Enrique on 2019-03-15.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func remoteControler() {
    // "1 2 3 4" -> split(" ")
    // .map(e -> Int(e))
    // [1, 2, 3, 4]
    var timesToPressButtons = 0
    var numbersOfController:[String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    //var numbersOfController:[Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    print("Channel do you want to see")
    let numberToWatch = readLine()
    let num1 = Int(numberToWatch!)
    if let numberToWatch = num1 {
        while (numberToWatch >= 500000) {
            print("The maximum channel is 500000")
        }
    }
    
    print("Total channel/s that don't work")
    let totalChannelsDontWork = Int(readLine()!)
    if let totalChannelsDontWork = totalChannelsDontWork {
        while (totalChannelsDontWork >= 10) {
            print("The maximum channels is 10")
        }
    }
    print("Channel/s that don't work")
    
    let input = readLine()
    if input?.count != totalChannelsDontWork {
        if let input = input {
            let numberOfChannelsDontWork = input.split(separator: " ")
            let numbers = numberOfChannelsDontWork.map { String($0) }
            //            print(numbers)
            //            print(numbersOfController)
            
            for (key, channels) in numbersOfController.enumerated() {
                for (_, notWork) in numbers.enumerated() {
                    if notWork.contains(channels) {
                        // Remove from the channel
                        numbersOfController.remove(at: key)
                        //numbersOfController.removeFirst(key)
                    }
                }
            }
            print("New array with keys that don't work: \(numbersOfController)")
            
            var canType = ""
            
            // 765
            // 0 1 2 4 5 7 9
            // N N N N Y Y N
            // 9 7 5 4 2 1 0
            // N Y Y N N N N
            
            for (key, value) in numbersOfController.enumerated() {
                if numberToWatch!.contains(value) {
                    numbersOfController.reverse()
                    if numberToWatch?.first == Character(value) {
                        canType.append(value)
                        timesToPressButtons += 1
                    } else {
                        var objetive = num1 - Int(canType)
                    }
                } else if (!numberToWatch!.contains(value)) {
                    timesToPressButtons += 1
                }
                print("The \(canType) are the numbers of times you have to press the buttons")
            }
            print("Times pressed the buttons are: \(timesToPressButtons)")
        } else {
            print("The number of channels that don't work are not the same")
        }
    }
}

func getTheLotto() {
    // Get the numbers K and S
    print("Enter the K")
    let k = readLine()
    let num1 = Int(k!)
    if input?.count != k {
        if let input = input {
            let letterK = input.split(separator: " ")
            let k = k.map { String($0) }
        }
    }
    
    print("Enter the S")
    let s = readLine()
    let num2 = Int(s!)
    if input?.count != s {
        if let input = input {
            let letterS = input.split(separator: " ")
            let s = s.map { String($0) }
        }
    }
    
    for numbers in k {
        if num1 < numbers {
            print("The possible combinations are \(numbers)")
        }
    }

}

// Call the method
remoteControler()


