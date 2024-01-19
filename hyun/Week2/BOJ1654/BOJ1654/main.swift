//
//  main.swift
//  BOJ1654
//
//  Created by 정현우 on 1/17/24.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap {Int($0)}
let cableCount = input[0]
let requiredCableCount = input[1]

var cables: [Int] = []
for _ in 0..<cableCount {
	cables.append(Int(readLine()!)!)
}

func cutCable(cables: [Int], length: Int) -> Int {
	var sum = 0
	cables.forEach { sum += $0/length }
	
	return sum
}

func optimizeCableLength() -> Int {
	var low = 1
	var high = Int.max
	
	while low <= high {
//		let mid = (low + high) / 2
		let mid = high - ((high - low) / 2) // high 초기 값이 Int.max이므로 low+high하면 오버플로 발생
		let currentCableCount = cutCable(cables: cables, length: mid)
		
		if currentCableCount < requiredCableCount {  // 만약 케이블 수가 더 적다 -> 더 촘촘하게 잘라야 함 -> high 낮추기
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	
	return high
}

print(optimizeCableLength())
