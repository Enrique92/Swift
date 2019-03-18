//
//  main.swift
//  Backtracking
//
//  Created by Mac on 2019-03-14.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func rollDice(_ numberOfDices: Int) {
    var _:[Int] = []
    var sum = 0
    var count = 1
    for dices in 1...6 {
        print("{\(numberOfDices), \(count)}", terminator: " ")
        count += 1
        //rollDice(dices - 1)
    }
    print("")
}

rollDice(2)
