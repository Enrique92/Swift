//
//  main.swift
//  Trees
//
//  Created by Enrique on 2019-03-22.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func preOrderTree() {
    let sizeTree = Int(readLine()!)!
    
    var tree = [[String]]()
    var leftNode = ""
    var rightNode = ""
    var fatherNode = ""
    
    for _ in 0..<sizeTree {
        let inputTree = readLine()!.map {($0.description)}
        tree.append(inputTree)
    }
    
    for y in 0..<tree.count {
        for x in 0..<tree.count {
            if (leftNode[x] == "A") {
                leftNode = tree[x].description
                rightNode = tree[y].description
            }
            print(tree[x][y])
        }
    }
}

func inOrderTree() {
    
}

func postOrderTree() {
    
}

// Print the first tree
preOrderTree()

