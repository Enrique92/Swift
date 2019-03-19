//
//  main.swift
//  Adjacency-Matrix
//
//  Created by Enrique on 2019-03-18.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func storeGraph() {
    
    let input = readLine()!.split(separator: " ")
    let n = Int(input[0])!
    let m = Int(input[1])!
    var matrix : [[Int]] = []
    
    for _ in 0..<n {
        matrix.append(Array<Int>(repeating: 0, count: n))
    }
    
    // Getting edges
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])! - 1
        let v = Int(edge[1])! - 1
        matrix[u][v] = 1
        matrix[v][u] = 1
    }
    
    // Print it
    for row in matrix {
        print(row)
    }
}

// 1 (2 - 5)
// 2 (3 - 4 - 5)
// 3 (2 - 4)
// 4 (2 - 3 - 5 - 6)
// 5 (2 - 3)
func dfs(start: Int) {
    let neighbour1 = start + 1
    let neighbour2 = neighbour1 + 1
    
    var queue: Queue<Int> = Queue<Int>()
    queue.enqueue(1)
    
}

struct Queue<T> {
    var array = [T]()
    var count: Int {
        return array.count
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var peek: T? {
        return array.first
    }
    
    // Q(1)
    mutating func enqueue(_ e: T) {
        array.append(e)
    }
    
    // Q(n)
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}

print(storeGraph())
