//
//  searchs.swift
//  Recursion
//
//  Created by Mac on 2019-03-12.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// 1. Bubble Sort O(n^2)
// - too many swaps
// - bubble up the largest one to the right
func bubbleSort(_ arrayNumbers: [Int]) {
    var arraySorted = arrayNumbers
    for i in 0..<arrayNumbers.count {
        for j in 0..<(arrayNumbers.count-i-1) {
            if (arraySorted[j] > arraySorted[j + 1]){
                let temp = arraySorted[j]
                arraySorted[j] = arraySorted[j + 1]
                arraySorted[j + 1] = temp
            }
        }
    }
    print("The array sorted is", arraySorted)
}


// 2. Selection Sort O(n^2)
// - each scan select min and put it the left
// - swap
func selectionSort(_ arrayNumbers: [Int]) {
    var arraySorted = arrayNumbers
    for i in 0..<arrayNumbers.count {
        var min = i
        for j in (i+1)..<(arrayNumbers.count) {
            if (arraySorted[j] > arraySorted[j + 1]){
                let temp = arraySorted[j]
                arraySorted[j] = arraySorted[j + 1]
                arraySorted[j + 1] = temp
            }
        }
    }
    print("The array sorted is", arraySorted)
}

// 3. Insertion Sort O(n^2)
// - sorted | unsorted
// - inserting elem from unsorted portion into sorted portion
// - shift
func insertionSort(_ arrayNumbers: [Int]) {
    var arraySorted = arrayNumbers
    for i in 1..<arrayNumbers.count {
        let toInsert = arraySorted[i]
        var j = i - 1
        while j >= 0 {
            if (toInsert < arraySorted[j]){
                arraySorted[j + 1] = arraySorted[j]
            } else {
                break
            }
            j -= 1
        }
        arraySorted[j + 1] = toInsert
    }
    print("The array sorted is", arraySorted)
}


// 4. Merge Sort O(n log n)
// Space-Complexity O(n)

func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 {
        print("The array merge is", array)
    }
    let mid = array.count / 2
    let left = mergeSort(Array(array[..<mid]))
    let right = mergeSort(Array(array[mid...]))
    
    return merge(left, right)
}

// Merge both arrays
func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var i = 0, j = 0
    var mergeArray: [Int] = []
    
    while i < left.count && j < right.count {
        if left[i] < right[i] {
            mergeArray.append(left[i])
            i += 1
        } else {
            mergeArray.append(right[j])
            j += 1
        }
    }
    if i == left.count {
        // Left over right
        mergeArray += right[j...]
    } else {
        mergeArray += left[i...]
    }
    print("The array sorted is", mergeArray)
    return mergeArray
}




