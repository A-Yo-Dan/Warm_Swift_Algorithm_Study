//
//  main.swift
//  BOJ2750
//
//  Created by 정현우 on 1/12/24.
//

import Foundation

let count = Int(readLine()!)!
var numList: [Int] = []

for _ in 0..<count {
	numList.append(Int(readLine()!)!)
}

numList.sort(by: <)

for num in numList {
	print(num)
}

