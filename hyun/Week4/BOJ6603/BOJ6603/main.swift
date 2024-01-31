//
//  main.swift
//  BOJ6603
//
//  Created by 정현우 on 1/30/24.
//

import Foundation

while true {
	let input: [Int] = readLine()!.split(separator: " ").map({ Int($0)! })
	if input.first! == 0 {break}

	let k = input[0]
	let S = Array(input[1...])
	
	func dfs(start: Int, currentArr: [Int]) {
		// 6자리 다 채웠다면 return
		if currentArr.count == 6 {
			print(currentArr.map{String($0)}.joined(separator: " "))
			return
		}
		
		// start부터 S끝까지 하나씩 담아서 dfs 재귀호출
		for i in start..<S.count {
			var nextArr: [Int] = currentArr
			nextArr.append(S[i])
			
			dfs(start: i+1, currentArr: nextArr)
		}
	}
	
	dfs(start: 0, currentArr: [])
	print()
}
















//while true {
//	let input: [Int] = readLine()!.split(separator: " ").compactMap({ Int($0) })
//	if input.first! == 0 {break}
//	
//	let k = input[0]
//	let targetSet = Set(input[1...])
//	var result: [Set<Int>] = []
//	
//	// 현재 뽑은 set과, 아직 안뽑은 Set
//	func dfs(currentSet: Set<Int>, remainSet: Set<Int>) {
//		if currentSet.count == 6 {
//			if result.contains(currentSet) {
//				return
//			} else {
//				result.append(currentSet)
//			}
//		} else {
//			for i in remainSet {
//				var nextRemainSet = remainSet
//				var nextSet = currentSet
//				nextRemainSet.remove(i)
//				nextSet.insert(i)
//				
//				dfs(currentSet: nextSet, remainSet: nextRemainSet)
//			}
//		}
//	}
//	
//	dfs(currentSet: [], remainSet: targetSet)
//	
//	var numArr: [[Int]] = []
//	for i in result {
//		numArr.append(Array(i).sorted())
//	}
//	
//	numArr.sort(by: {
//		for (num1, num2) in zip($0, $1) {
//			if num1 < num2 {
//				return true
//			}
//		}
//		return false
//	})
//	
//	print()
//	for num in numArr {
//		print(num.map{String($0)}.joined(separator: " "))
//	}
//}




