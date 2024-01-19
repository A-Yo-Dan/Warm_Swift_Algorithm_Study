//
//  1654.swift
//  Algorithm
//
//  Created by 이재혁 on 1/19/24.
//

let inputArray = readLine()!.split(separator: " ").map { Int(String($0))! }

var K = inputArray[0]
var N = inputArray[1]
var wires = [Int]()

for _ in 0..<K {
    wires.append(Int(readLine()!)!)
}

var answer: Int = 0

var left = 1
var right = wires.max()!

while left <= right {
    let mid: Int = (left + right) / 2
    
    var temp = 0
    for wire in wires {
        temp += wire / mid
    }
    
    if temp >= N {
        if answer < mid {
            answer = mid
        }
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(answer)
