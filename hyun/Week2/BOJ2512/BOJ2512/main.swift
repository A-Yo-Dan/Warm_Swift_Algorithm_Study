//
//  main.swift
//  BOJ2512
//
//  Created by 정현우 on 1/17/24.
//

import Foundation

let cityCount = Int(readLine()!)!
let budgets: [Int] = readLine()!.split(separator: " ").compactMap {Int($0)}
let totalBudget = Int(readLine()!)!

func calculateTotalBudget(limit: Int) -> Int {
	var sum = 0
	budgets.forEach {
		sum += $0 > limit ? limit : $0
	}
	
	return sum
}

func optimizeBudgets() -> Int {
	var sum = 0
	budgets.forEach {sum += $0}
	if sum <= totalBudget {return budgets.max()!}
	
	var low = 0
	var high = totalBudget
	
	while low <= high {
		let mid = (low+high) / 2
		
		let guess = calculateTotalBudget(limit: mid)
		
		if guess == totalBudget {
			return mid
		} else if guess < totalBudget {
			low = mid + 1
		} else {
			high = mid - 1
		}
		
	}
	
	return high
}

print(optimizeBudgets())
