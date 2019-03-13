//
//  QuickSort.swift
//  Recursion
//
//  Created by Mac on 2019-03-12.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

// quickSort(arr, low, high)
//  if low < high
//     pivot_i = partition(arr, low, high)
//       quickSort(arr[:pivot_i], 0, pivot_i-1)
//       quickSort(arr[pivot_i+1:], pivot_i+1, arr.count)

// partition(arr, low, high) -> Int
// - pivot_i = 0
// - iterate each element
//       if current_elem < pivot(last_elem)
//            swap with pivot_i
//            pivot_i++
// - swap pivot_i with pivot(last_elem)
// - return pivot_i

// 5. Quick Sort O(n log n)
// Space-Complexity O(1) (in-place)
func quickSort(_ array: [Int], _ low: Int, _ high: Int) {
    if low < high {
        let pivot_i = partition(array, low, high)
        quickSort(array, low, pivot_i)
        quickSort(array, pivot_i + 1, high)
    }
    print("The quick sort array is", array)
}

func partition(_ array: [Int], _ low: Int, _ high: Int) -> Int {
    var pivot_i = array[high]
    var i = low
    for j in low..<high {
        if array[j] <= pivot_i {
            i = pivot_i
            // Swip the data
            //(array[i], array[j]) = (array[j], array[i])
            i += 1
        }
        //(array[i], array[high]) = (array[high], array[i])
        pivot_i = high
    }
    return pivot_i
}
