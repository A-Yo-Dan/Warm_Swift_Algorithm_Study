//
//  2750.swift
//  Algorithm
//
//  Created by 이재혁 on 1/12/24.
//

import Foundation
let number: Int = Int(readLine()!)!
var numArray: [Int] = []

for _ in 1...number {
    let numberInArray = Int(readLine()!)!
    numArray.append(numberInArray)
}

bubbleSort(&numArray)

for num in numArray {
    print(num)
}

func bubbleSort(_ array: inout [Int]) {
    for index1 in 0..<(array.count - 1) {
        var isSwap = false
        for index2 in 0..<((array.count - index1) - 1) {
            if array[index2] > array[index2 + 1] {
                array.swapAt(index2, (index2 + 1))
                isSwap = true
            }
        }
        if isSwap == false { return }
    }
}
