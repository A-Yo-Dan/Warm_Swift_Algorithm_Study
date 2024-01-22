//
//  main.swift
//  BOJ13144
//
//  Created by 정현우 on 1/22/24.
//

import Foundation

let N = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").compactMap {Int($0)}

var end = 0
var count = 0

var numberSet = Set<Int>()

for start in 0..<N {
	
	while (end-start) == numberSet.count && end < N {
		numberSet.insert(numbers[end])
		
		end += 1
	}
	
	count += end - start
	
	if (end-start) != numberSet.count {
		end -= 1
		count -= 1
	}

	numberSet.remove(numbers[start])
}

print(count)

