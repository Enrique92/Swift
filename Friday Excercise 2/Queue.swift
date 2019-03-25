//
//  Queue.swift
//  Friday Excercise 2
//
//  Created by Enrique on 2019-03-23.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// Queue : FIFO
// enqueue, dequeue, peek, isEmpty, count
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
    // O(1)
    mutating func enqueue(_ e: T) {
        array.append(e)
    }
    // O(n)
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}
