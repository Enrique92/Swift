//
//  main.swift
//  DFS
//
//  Created by Enrique on 2019-04-10.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func dfs(start: Int, check: inout [Bool], adjList: inout [[Int]]) {
    check[start] = true
    print(start)
    for next in adjList[start] {
        if check[next] == false {
            dfs(start: next, check: &check, adjList: &adjList)
        }
    }
}

func StoreInAdjacencyList() {
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])! // num of vertices
    let m = Int(firstLine[1])! // num of edges
    var adjList = Array<Array<Int>>(repeating: [], count: n + 1)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])!
        let v = Int(edge[1])!
        adjList[u].append(v) // undirected u -> v, v -> u
        adjList[v].append(u)
    }
    
    // dfs (depth first search)
    var check: [Bool] = Array<Bool>(repeating: false, count: n + 1)
    dfs(start: 1, check: &check, adjList: &adjList) // 1 -> 2 -> 3 -> 4 -> 5 -> 6
}

