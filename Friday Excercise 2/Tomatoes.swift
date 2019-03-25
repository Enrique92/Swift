//
//  Tomatoes.swift
//  Friday Excercise 2
//
//  Created by Enrique on 2019-03-23.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class Tomatoes {
    
//    struct Tomat {
//        let x: Int
//        let y: Int
//    }
//
//    let dx = [0, 0, 1, -1, 1, 1, -1, -1]
//    let dy = [1, -1, 0, 0, 1, -1, 1, -1]
    
    func getTomatoes() {
        let n = Int(readLine()!)!
        let m = Int(readLine()!)!
        var visited = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        var node = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        
        // Number of ripe tomatoes
        var one = 0
        var zero = 0
        var max = 0
        
        for i in 0..<m {
            var z = 0
            let nums = readLine()!
            let array = nums.compactMap{Int(String($0))}
            for j in 0..<n {
                //node = readLine()!.split(separator: " ").map { Int(String($0))! }
                node[i][j] = array[z]
                z += 1
            }
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if (node[i][j] == 0) {
                    zero += 1
                } else {
                    one += 1
                }
            }
        }
        
        if (one == 0) {
            print("-1")
        }
        if (zero == 0) {
            print("0")
        }
        
        // The cell was visited
        for i in 0..<m {
            for j in 0..<n {
                visited[i][j] = -1
            }
        }
        
        // Create a Queue
        var q = Queue<Int>()
        
        // Add to the Queue
        for i in 0..<m {
            for j in 0..<n {
                if (node[i][j] == 1) {
                    q.enqueue(i)
                    q.enqueue(j)
                    visited[i][j] = 0
                }
            }
        }
        
        while (!q.isEmpty) {
            let here1 = Int(q.dequeue()!)
            let here2 = Int(q.dequeue()!)
            
            if (visited[here1][here2] != -1) {
                if ((here1 > 0) && visited[here1 - 1][here2] == -1 && node[here1 - 1][here2] == 0) {
                    q.enqueue(here1 - 1)
                    q.enqueue(here2)
                    // If you have not visited and have an edge
                    // If you have one tomato in the cell
                    visited[here1 - 1][here2] = visited[here1][here2] + 1
                }
                if ((here2 > n - 1) && visited[here1][here2 + 1] == -1 && node[here1][here2 + 1] == 0) {
                    q.enqueue(here1)
                    q.enqueue(here2 + 1)
                    // If you have not visited and have an edge - RIGHT
                    visited[here1][here2 + 1] = visited[here1][here2] + 1
                }
                if ((here2 > 0) && visited[here1][here2 - 1] == -1 && node[here1][here2 - 1] == 0) {
                    q.enqueue(here1)
                    q.enqueue(here2 - 1)
                    // If you have not visited and have an edge - LEFT
                    visited[here1][here2 - 1] = visited[here1][here2] + 1
                }
                if ((here1 > m + 1) && visited[here1 + 1][here2] == -1 && node[here1 + 1][here2] == 0) {
                    q.enqueue(here1 + 1)
                    q.enqueue(here2)
                    visited[here1 + 1][here2] = visited[here1][here2] + 1
                }
            }
        }
        // Visited require initialization
        // Get the maximum number of tomatoes
        for i in 0..<m {
            for j in 0..<n {
                if (max < visited[i][j]) {
                    max = visited[i][j]
                }
            }
        }
        
        if (one > 0) {
            for i in 0..<m {
                for j in 0..<n {
                    if (node[i][j] != -1 && visited[i][j] == -1) {
                        print("-1")
                    }
                }
            }
        }
        // Print the maximum tomatoes no riped
        print(max)
    }
}
