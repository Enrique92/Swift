//
//  main.swift
//  MiniProject
//
//  Created by Enrique on 2019-03-14.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// Create a instance of board with the size
var board = Board(size: 8)

// Resolve the quiz
let resolver = solveQueens(board: &board)

// Print the board
//print(board.description)
