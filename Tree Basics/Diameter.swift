//
//  Diameter.swift
//  Tree Basics
//
//  Created by Enrique on 2019-03-26.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class Diameter {
    
    var res = 0
    var l = 0, r = 0
    var tree: [[Int]] = [[Int]]()
    
    func helper(_ node: [Int]) -> Int {
        let l = 1 + helper([node[0]]);
        let r = 1 + helper([node[1]]);
        if(node.isEmpty){
            return -1;
        }
        res = max(res, l + r)
        return max(l, r)
    }
    
    func diameterOfBinaryTree() -> Int {
        let size = Int(readLine()!)!
        for _ in 0..<size-1 {
            let nodeInfo = readLine()!.split(separator: " ").map {
                Int($0)
            }
            if(nodeInfo.isEmpty) {
                return 0;
            }
            print(helper(nodeInfo as! [Int])
        }
        return res;
    }
}

//    var tree = [[Int]](repeating: [Int](repeating: 0, count: 2), count: 50)
//
//    var diameter = 0
//    func diameterOfNode() -> Int {
//        let size = Int(readLine()!)!
//        var lv = 0, rv = 0
//
//        for _ in 0..<size-1 {
//            let nodeInfo = readLine()!.split(separator: " ").map {
//                Int($0)
//            }
//            let left = nodeInfo[0]!
//            let right = nodeInfo[1]!
//            if left != 0 {
//                lv = 1 + diameterOfNode()
//            }
//            if right != 0 {
//                rv = 1 + diameterOfNode()
//            }
//        }
//
//        diameter = max(diameter, lv + rv)
//        return max(lv, rv)
//    }
//
//    func diameterOfBinaryTree() -> Int {
//        diameterOfNode()
//        return diameter
//    }
