//
//  main.swift
//  BOJ1806
//
//  Created by 정현우 on 1/22/24.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap {Int($0)}
let N = input[0]
let targetSum = input[1]

let numbers = readLine()!.split(separator: " ").compactMap {Int($0)}

var end = 0
var sum = 0
var currentMinimumResult = 100001

for start in 0..<N {
	while sum < targetSum && end < N {
		sum += numbers[end]
		end += 1
	}
	
	if sum >= targetSum && currentMinimumResult > (end - start) {
		currentMinimumResult = end - start
	}
	
	sum -= numbers[start]
}

print(currentMinimumResult > 100000 ? 0 : currentMinimumResult)

