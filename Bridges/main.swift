//
//  main.swift
//  Bridges
//
//  Created by Enrique on 2019-03-21.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class Bridges {

    struct Pair {
        let x: Int
        let y: Int
    }

    let dx = [0, 0, 1, -1, 1, 1, -1, -1]
    let dy = [1, -1, 0, 0, 1, -1, 1, -1]

    var group = Array<Array<Int>>(repeating: Array<Int>(repeating: 0, count: 50), count: 50)

    func bfs(x: Int, y: Int, groupNum: Int, width: Int, height: Int, islandMap: inout [[Int]]) {
        var q = Queue<Pair>()
        q.enqueue(Pair(x: x, y: y))
        group[y][x] = groupNum
        while !q.isEmpty {
            let first = q.dequeue()!
            let x = first.x
            let y = first.y
            for i in 0..<8 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                if nx >= 0 && nx < width && ny >= 0 && ny < height {
                    if islandMap[ny][nx] == 1 && group[ny][nx] == 0 {
                        q.enqueue(Pair(x: nx, y: ny))
                        group[ny][nx] = groupNum
                    }
                }
            }
        }
    }

    func buildShortestBridge() {
        while true {
            let firstLine = readLine()!
            if firstLine == "0 0" {
                break
            }

            var bridgesMap = [[Int]]()
            let firstLineArr = firstLine.split(separator: " ").map {
                Int(String($0))!
            }
            let x = firstLineArr[0]
            let y = firstLineArr[1]
        }
    }
}

