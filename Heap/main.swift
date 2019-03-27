//
//  main.swift
//  Heap
//
//  Created by Enrique on 2019-03-25.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

class PriorityQueue {
    
    // Insert the value x in the Array
    func insert(_ S: inout [Int], _ x: Int) {
        S.append(x)
    }
    
    // Return the largest number of the Array
    func max(_ S: inout [Int]) -> Int {
        var largest = 0
        for i in S {
            if (i >= largest) {
                largest = i
            }
        }
        return largest
    }
    
    // Return the largest number of the Array and remove from it
    func extractMax(_ S: inout [Int]) -> Int {
        var largest = 0
        for (key, value) in S.enumerated() {
            if (value >= largest) {
                largest = value
                if (largest > value) {
                    S.remove(at: key)
                }
            }
        }
        return largest
    }
    
    // Replace from the Array the value x for the value k
    func increaseKey(_ S: inout [Int], _ x: Int, _ k: Int) {
        for (key, value) in S.enumerated() {
            if (value == x) {
                S[key] = k
            }
        }
    }
    
    func printArray(_ S: inout [Int]) {
        print(S)
    }
}

class Heap {
    
    // Produce a max-heap from an unordered array
    func buildMaxHeap(_ array: inout [Int]) {
        var largest = 0
        for i in array {
            if (i > largest) {
                
            }
        }
    }
    
    // Return the size of the Heap
    func heapSize(_ array: inout [Int]) -> Int {
        return array.count
    }
    
    // Correct a single violation of the heap property in a subtree at its root
    func maxHeapify(_ array: inout [Int], _ largest: inout Int) {
        let i = 1
        let parent = i / 2
        let left = i * 2
        let right = (i * 2) + 1
        
        if (left <= heapSize(&array) && array[left] > array[i]) {
            largest = left
        } else {
            largest = i
        }
        
        if (right <= heapSize(&array) && array[right] > array[largest]) {
            largest = right
        }
        
        if (largest != i) {
            array[i] = array[largest]
            maxHeapify(&array, &largest)
        }
    }
    
    func insert(_ heap: inout Array<Comparable>, _ value: Int) {
        heap.append(value)
    }
    
    func extractMax() {
        
    }
    
    func heapSort() {
        
    }
}

var heap = PriorityQueue()

var array = [16, 14, 10, 8, 19, 9, 3, 2, 4, 1]

heap.insert(&array, 3)
heap.printArray(&array)
print(heap.max(&array))
