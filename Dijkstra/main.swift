//
//  main.swift
//  Dijkstra
//
//  Created by Enrique on 2019-04-10.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// "relaxation"
// dist: an array of elements representing costs
// for all vertices
// edge (u, v)
// if (dist[u] > dist[v] + w(u,v)) {
//    dist[u] = dist[v] + w(u, v)
// }

// Time Complexity: V (vertices), E (Edges)
// Adjacency List -> O(V^2)

func DijkstraExercise() {
    // # of vertices
    let n = Int(readLine()!)!
    var adjList = [[Edge]](repeating: [], count: n + 1)
    var dist = [Int](repeating: Int.max, count: n + 1)
    var check = [Bool](repeating: false, count: n + 1)
    // # of edges
    let m = Int(readLine()!)!
    for _ in 0..<m {
        // u -> v   w
        let edge = readLine()!.split(separator: " ").map { Int($0)! }
        let u = edge[0]
        adjList[u].append(Edge(to: edge[1], cost: edge[2]))
    }
    // start, end
    let question = readLine()!.split(separator: " ").map { Int($0)! }
    let start = question[0]
    let end = question[1]
    dist[start] = 0
    // dijkstra
    for _ in 0..<n-1 {
        // find the min node
        var min = Int.max
        var x = -1
        for i in 1...n {
            if !check[i] && min > dist[i] {
                min = dist[i]
                x = i
            }
        }
        check[x] = true
        for node in adjList[x] {
            let y = node.to
            if dist[y] > dist[x] + node.cost {
                dist[y] = dist[x] + node.cost
            }
        }
    }
    print(dist[end]) // answers
}

