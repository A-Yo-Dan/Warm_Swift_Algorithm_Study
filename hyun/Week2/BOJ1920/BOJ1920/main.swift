//
//  main.swift
//  BOJ1920
//
//  Created by 정현우 on 1/17/24.
//

import Foundation

let N = Int(readLine()!)!
var numbers: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
numbers.sort()

let M = Int(readLine()!)!
var targets: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

func findTargets(target: Int) -> Bool {
	var low = 0
	var high = numbers.count - 1
	
	while low <= high {
		let mid = (low+high)/2
		let guess = numbers[mid]
		
		if target == guess {
			return true
		} else if target < guess {
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	
	return false
}

targets.forEach {
	print(findTargets(target: $0) ? 1 : 0)
}


