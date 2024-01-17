//
//  main.swift
//  BOJ1072
//
//  Created by 정현우 on 1/15/24.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let X = input[0]
let Y = input[1]

func calculateWinRate(winCount: Int, totalCount: Int) -> Int {
	return Int(Double(winCount) * 100 / Double(totalCount))  // 나누기에서 오차 발생해서 먼저
}

let target = calculateWinRate(winCount: Y, totalCount: X)

func calculateToAddWinRate() -> Int {
	if target >= 99 {return -1}
	
	var low = 0
	var high = 1000000000
	
	while low <= high {
		let mid = (low + high) / 2
		let guess = calculateWinRate(winCount: Y+mid, totalCount: X+mid)
		
		if guess <= target {
			low = mid + 1
		} else {
			high = mid - 1
		}
	}
	
	return low
}

print(calculateToAddWinRate())


