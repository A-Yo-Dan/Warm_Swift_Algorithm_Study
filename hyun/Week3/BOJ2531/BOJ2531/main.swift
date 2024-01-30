//
//  main.swift
//  BOJ2531
//
//  Created by 정현우 on 1/22/24.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap {Int($0)}
let N = input[0]
let windowSize = input[2]
let couponNumber = input[3]

var numbers = Array<Int>()
for _ in 0..<N {
	numbers.append(Int(readLine()!)!)
}

var currentDict = Dictionary<Int, Int>()
var currentArr = Array<Int>()
// 초기값
currentArr.append(contentsOf: numbers[0..<windowSize])
for num in currentArr {
	currentDict[num, default: 0] += 1
}

// 쿠폰 추가
currentDict[couponNumber, default: 0] += 1

var result = 0
result = max(result, currentDict.count)

for start in 0..<N {
	currentDict[numbers[start]]! -= 1
	
	// 만약 뺐는데 0이면 아예 remove 해줌
	if currentDict[numbers[start]]! == 0 {
		currentDict.removeValue(forKey: numbers[start])
	}
	
	currentDict[numbers[(start+windowSize) % N], default: 0] += 1
	
	result = max(result, currentDict.count)
}

print(result)






















//var maxSet = Set<Int>()
//var currentArr = Array<Int>()
//
//// 초기값
//currentArr.append(contentsOf: numbers[0..<windowSize])
//maxSet.insert(couponNumber)
//for num in currentArr {
//	maxSet.insert(num)
//}
//
//for start in 0..<N-1 {
//	let end = start + windowSize
//	currentArr.removeFirst()
//	currentArr.append(numbers[end%N])
//	
//	var currentSet = Set(currentArr)
//	currentSet.insert(couponNumber)
//	
//	if maxSet.count < currentSet.count {
//		maxSet = currentSet
//	}
//}
//
//print(maxSet.count)
