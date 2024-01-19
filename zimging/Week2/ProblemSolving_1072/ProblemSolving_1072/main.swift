//
//  main.swift
//  ProblemSolving_1072
//
//  Created by YOUJIM on 1/19/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let X = input[0]
let Y = input[1]

var Z = (Y * 100) / X

if Z >= 99 { print(-1) }
else {
    var answer = 0
    var left = 1
    var right = X
    
    while left <= right {
        let mid = (left + right) / 2
        
        if (Y + mid) * 100 / (X + mid) <= Z { left = mid + 1 }
        else {
            answer = mid
            right = mid - 1
        }
    }
    print(answer)
}
