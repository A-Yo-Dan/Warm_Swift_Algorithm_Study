//
//  main.swift
//  BOJ2018
//
//  Created by 정현우 on 1/22/24.
//

import Foundation

let number = Int(readLine()!)!

var end = 0
var sum = 0

var count = 0

for start in 1...number {
	while sum < number && end <= number {
		end += 1
		sum += end
	}
	
	if sum == number {
		count += 1
	}
	
	sum -= start
	
}

print(count)
