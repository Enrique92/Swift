//
//  main.swift
//  Lowest Common Ancestor(LCA)
//
//  Created by Enrique on 2019-03-27.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

//func LCA(_ root: [[Int]], _ p: [Int], _ q: [Int]) -> Int {
//    // Get the size
//    let size = Int(readLine()!)!
//    var root = [[Int]](repeating: [], count: size + 1)
//    let queue = [Int](repeating: 0, count: size + 1)
//    //var check = [Bool](repeating: false, count: size + 1)
//    let parent = [Int](repeating: 0, count: size + 1)
//
//    // Start for one node less
//    for _ in 0..<size-1 {
//        let edge = readLine()!.split(separator: " ")
////        left = Int(edge[0])!
////        right = Int(edge[1])!
////        root[left].append(right) // undirected u -> v, v -> u
////        root[right].append(left)
//    }
//
//    let left = LCA([root[0]], parent, queue)
//    let right = LCA([root[1]], parent, queue)
//
//    // we break when we hit a leaf node
//    // or root (the recursed node in reality) is at p or q
//    if root.isEmpty || root[0] == parent || root[1] == parent || root[0] == queue || root[1] == queue {
//        print(root)
//    }
//
//    // if left is at a leaf, try to go right
//    // NOTE: right might be nil, let the base condition handle it
//    if left == 0 {
//        print(right)
//        return right
//    }
//
//    // if right is at a leaf, try to go left
//    // NOTE: left might be nil, let the base condition handle it
//    if right == 0 {
//        print(left)
//        return left
//    }
//
//    // both left and right are NOT nil,
//    // we have some common node that is not p or q
//    print(root)
//    return 0
//}

//-----------------------------------------

// Iterative function to search a given key in root
func search(_ root: inout [Int], _ key: Int) -> Bool {
    // traverse the tree and search for the key
    while (root.isEmpty) {
        // if given key is less than the current node, go to left
        // subtree else go to right subtree
        
        if (key < root[0]) {
            root = [root[0]];
        }
        else if (key > root[1]) {
            root = [root[1]];
        }
            // if key is found return true
        else {
            return true;
        }
    }
    
    // we reach here if the key is not present in the BST
    return false;
}

// Recursive function to find Lowest Common Ancestor of given nodes
// x and y where both x and y are present in the Binary Search Tree
func LCA() -> Int {
    let size = Int(readLine()!)!
    let root = [[Int]](repeating: [], count: size + 1)
    var left = 0
    var right = 0
    
    // Start for one node less
    for _ in 0..<size-1 {
        let edge = readLine()!.split(separator: " ")
        left = Int(edge[0])!
        right = Int(edge[1])!
    }
    
    // base case: empty tree
    if (root.isEmpty) {
        return 0;
    }
    
    // if both x and y is smaller than root, LCA exists in left subtree
    if (left > max(left, right)) {
        return LCA();
    }
        
        // if both x and y is greater than root, LCA exists in right subtree
    else  if (right < min(left, right)) {
        return LCA();
    }
    
    // if one key is greater (or equal) than root and one key is smaller
    // (or equal) than root, then the current node is LCA
    return 0;
}

// Print Lowest Common Ancestor of two nodes in a BST
func LCA(_ root: inout [Int],_ x: Int,_ y: Int) {
    // return if tree is empty or either x or y is not present
    // in the tree
    if (root.isEmpty || !search(&root, x) || !search(&root, y)) {
        return;
    }
    
    // lca stores lowest common ancestor of x and y
    var lca: [Int] = [LCA()]
    
    // if lowest common ancestor exists, print it
    if (lca.isEmpty) {
        print("\(lca[0])")
    }
}
