//
//  main.swift
//  Adjacency-Matrix
//
//  Created by Enrique on 2019-03-18.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func AdjacencyMatrix() {
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])! // num of vertices
    let m = Int(firstLine[1])! // num of edges
    var matrix = Array<Array<Int>>(repeating: Array<Int>(repeating: 0, count: n + 1), count: n + 1)
    
    for _ in 0..<n {
        matrix.append(Array<Int>(repeating: 0, count: n))
    }
    
    // getting edges
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])! - 1
        let v = Int(edge[1])! - 1
        matrix[u][v] = 1
        matrix[v][u] = 1
    }
    
    for row in matrix {
        print(row)
    }
}

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
func dfs(start: Int, check: inout [Bool], adjList: inout [[Int]]) {
    check[start] = true
    print(start)
    for next in adjList[start] {
        if check[next] == false {
            dfs(start: next, check: &check, adjList: &adjList)
        }
    }
}

func dfsNew(start: Int, color: Int, check: inout [Int], adjList: inout [[Int]]) {
    check[start] = color
    for next in adjList[start] {
        if check[next] == 0 {
            dfsNew(start: next, color: 3 - color, check: &check, adjList: &adjList)
        } else if () {
            return false
        }
    }
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

//print(storeGraph())

func connectedComponents() {
    let inputComponent = readLine()!.split(separator: " ")
    let n = Int(inputComponent[0])!
    let m = Int(inputComponent[1])!
    var matrix = Array<Array<Int>>(repeating: [], count: n + 1)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])!
        let v = Int(edge[1])!
        matrix[u][v] = 1
        matrix[v][u] = 1
    }
    
    var check: [Bool] = Array<Bool>(repeating: false, count: n + 1)
    var count = 0
    for node in 1..<matrix.count {
        if !check[node] {
            dfs(start: node, check: &check, adjList: &matrix)
            count += 1
        }
    }
    
    print("Number of components: \(count)")
}

// Print number of components
//connectedComponents()

func bipartiteGraph() {
    var inputNumberOfTestCases = Int(readLine()!)!
    let inputGraphs = readLine()!.split(separator: " ")
    let n = Int(inputGraphs[0])!
    let m = Int(inputGraphs[1])!
    var matrix = Array<Array<Int>>(repeating: [], count: n + 1)
    
    while inputNumberOfTestCases > 0 {
        for _ in 0..<m {
            let edge = readLine()!.split(separator: " ")
            let u = Int(edge[0])!
            let v = Int(edge[1])!
            matrix[u][v] = 1
            matrix[v][u] = 1
        }
        
        var check: [Int] = Array<Int>(repeating: 0, count: n + 1)
        var solution = "NO"
        for node in 1...n {
            if check[node] == 0 {
                dfsNew(start: node, color: 1, check: &check, adjList: &matrix)
                solution = "YES"
            }
        }
    }
    
    print("Is bipartite graph: \(solution)")
}

// Print the result
bipartiteGraph()
