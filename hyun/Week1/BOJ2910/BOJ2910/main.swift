//
//  main.swift
//  BOJ2910
//
//  Created by 정현우 on 1/7/24.
//

import Foundation

let inputNum: [Int] = readLine()!.split(separator: " ").map {Int($0)!}
var inputArr: [Int] = readLine()!.split(separator: " ").map {Int($0)!}

var countArr: [Int: (order: Int, count: Int)] = [:]

var orderCount: Int = 0
for num in inputArr {

	countArr[num, default: (order: orderCount, count: 0)].count += 1
	orderCount += 1
}


var sortedKeys = countArr.keys.sorted(by: {
	if countArr[$0]!.count == countArr[$1]!.count {
		return countArr[$0]!.order < countArr[$1]!.order
	} else {
		return countArr[$0]!.count > countArr[$1]!.count
	}
})


var resultArr: [Int] = []
for sortedKey in sortedKeys {
	for i in 0..<countArr[sortedKey]!.count {
		resultArr.append(sortedKey)
	}
}

print(resultArr.map {String($0)}.joined(separator: " "))



