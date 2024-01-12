//
//  main.swift
//  BOJ11650
//
//  Created by 정현우 on 1/7/24.
//

import Foundation

let count = Int(readLine()!)!

var dots: [[Int]] = []

for _ in 0..<count {
	let dot: [Int] = readLine()!.split(separator: " ").map {Int($0)!}
	dots.append(dot)
}

dots.sort(by: {
	if $0[0] == $1[0] {
		return $0[1] < $1[1]
	} else {
		return $0[0] < $1[0]
	}
})

for dot in dots {
	print("\(dot[0]) \(dot[1])")
}

