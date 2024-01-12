//
//  11650.swift
//  Algorithm
//
//  Created by 이재혁 on 2023/04/07.
//

import Foundation

// 받는 점 개수
let inputNum: Int = Int(readLine()!)!

// 점 위치 받기
var periods: [Int: (Int, Int)] = [:]

for i in 0...inputNum - 1 {
    let inputArray = readLine()!.split(separator: " ").map { Int(String($0))! }
    periods[i+1] = (inputArray[0], inputArray[1])
}

// 정렬
for i in 0..<inputNum-1 {
    for j in 0..<(inputNum-1-i) {
        if periods[j].0 > periods[j+1].0 {
            var temp: (Int, Int) = periods[j]
            periods[j] = periods[j+1]
            periods[j+1] = temp
        }
        else if periods[j].0 == periods[j+1].0 {
            if periods.[j].1 > periods[j+1].1 {
                var temp: (Int, Int) = periods[j]
                periods[j] = periods[j+1]
                periods[j+1] = temp
            }
        }
    }
}

for i in 0...inputNum-1 {
    print("\(periods[i].0) \(periods[i].1)")
}


// MARK: - 240112 다시 푼 버전
struct Coordinate {
    var x: Int = 0
    var y: Int = 0
}

let numbers: Int = Int(readLine()!)!
var numbersArr = [Coordinate](repeating: Coordinate(), count: numbers)

for i in 1...numbers {
    let inputNumbers = readLine()!.split(separator: " ").map{ Int(String($0))!}
    
    numbersArr[i-1].x = inputNumbers[0]
    numbersArr[i-1].y = inputNumbers[1]
}

numbersArr.sort(by:
                    {
    if $0.x == $1.x {return $0.y < $1.y}
    return $0.x < $1.x
})

for items in numbersArr {
    print("\(items.x) \(items.y)")
}

