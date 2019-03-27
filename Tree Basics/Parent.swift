//
//  Parent.swift
//  Tree Basics
//
//  Created by Enrique on 2019-03-26.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class Parent {
    // Create the tree
    var tree = [[Int]](repeating: [Int](repeating: 0, count: 2), count: 50)
    
    func whoIsMyParent() {
        let size = Int(readLine()!)!
        var parent = 0
        if (size < 1) {
            return
        } else {
            for i in 0..<size-1 {
                let nodeInfo = readLine()!.split(separator: " ").map {
                    Int($0)
                }
                let l = nodeInfo[0]!
                let r = nodeInfo[1]!
                if (i < size) {
                    if (l < r) {
                        //preorder(node: 0)
                        parent = l
                    } else if(l > r) {
                        //preorder(node: 0)
                        parent = r + 1
                    }
                }
                // Print the parent of each node
                print(parent)
            }
        }
    }
    
//    func preorder(node: Int) {
//        if node == -1 {
//            return
//        }
//        preorder(node: tree[node][0])
//        preorder(node: tree[node][1])
//    }
}
