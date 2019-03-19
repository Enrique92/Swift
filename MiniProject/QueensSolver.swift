//
//  QueensSolver.swift
//  Swift
//
//  Created by Enrique on 2019-03-14.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

/// Write a function solveQueens that accepts a Board as a parameter
/// and tries to place 8 queens on it safely.
///
/// - Your method should stop exploring if it finds a solution
/// - You are allowed to change the function header (args or return type)
/// - Your total recursive calls should not exceed 120 times.

func solveQueens(board: inout Board) {
    // The number of queens
    let numberOfQueens = 8
    var countNumberOfQueensSafe = 0
    var numberOfIterations = 0
    let sizeBoard: [[Int]] = [[8]]
    var size = Array(repeating: Array(repeating: 0, count: board.size), count: board.size)
    
    // Check if the queen is safe
    for i in size {
        for j in i {
            // If there are less than 8 queens keep placing the queen in the board
            if countNumberOfQueensSafe != numberOfQueens {
                if board.isSafe(row: i.count, col: j) {
                    board.place(row: i.count, col: j)
                    countNumberOfQueensSafe += 1

                    // Show the number of total iterations
                    numberOfIterations += 1
                }
            }

            // Check the number of solutions
            solveQueens(board: &board)

            if countNumberOfQueensSafe == numberOfQueens {
                // Remove from the board
                board.remove(row: i.count, col: i.count)
            }

            // Check the number of solutions
            solveQueens(board: &board)

            // Print the board
            print(board.description)
        }
        // Print the number of iterations
        print("Number of iterations \(numberOfIterations)")
    }
}

