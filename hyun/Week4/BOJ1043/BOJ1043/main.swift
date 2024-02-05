//
//  main.swift
//  BOJ1043
//
//  Created by 정현우 on 1/30/24.
//

import Foundation

let firstLine = readLine()!.split(separator: " ").map{Int($0)!}
let peopleCount = firstLine[0]
let partyCount = firstLine[1]

let secondLine = readLine()!.split(separator: " ").map{Int($0)!}
let truthCount = secondLine[0]
let truthPeople = secondLine[1...]

// 인접 행렬
var matrixGraph: [[Bool]] = Array(repeating: Array(repeating: false, count: peopleCount+1), count: peopleCount+1)

var parties: [[Int]] = []
for _ in 0..<partyCount {
	let currentLine = readLine()!.split(separator: " ").map{Int($0)!}
	let count = currentLine[0]
	let currentParty = Array(currentLine[1...])
	
	parties.append(currentParty)
	
	// 인접 행렬에 기록 ex) 어떤 파티에 1, 3이 참석한다하면
	// 1 -> 3,  3 -> 1 기록(무방향)
	for i in 0..<count {
		for j in 0..<count {
			if i != j {
				matrixGraph[currentParty[i]][currentParty[j]] = true
			}
		}
	}
}

var people: [Bool] = Array(repeating: false, count: peopleCount+1)
truthPeople.forEach {
	people[$0] = true
}

func dfs(person: Int) {
	people[person] = true
	
	for i in 1...peopleCount {
		if matrixGraph[person][i] && !people[i] {
			dfs(person: i)
		}
	}
}

truthPeople.forEach {
	dfs(person: $0)
}

var result: Int = 0
for party in parties {
	for person in party {
		// 한명이라도 진실을 안다면 break
		if people[person] {
			break
		}
		
		// 마지막까지 break에 안걸렸다면
		if party.last! == person {
			result += 1
		}
	}
}

print(result)






/*
 반례
 6 5
 1 6
 2 4 5
 2 1 2
 2 2 3
 2 3 4
 2 5 6

 -> 0
 */
//
//let firstLine = readLine()!.split(separator: " ").map{Int($0)!}
//let peopleCount = firstLine[0]
//let partyCount = firstLine[1]
//
//let secondLine = readLine()!.split(separator: " ").map{Int($0)!}
//let truthCount = secondLine[0]
//
//// 진실을 아는 사람
//var truthPeople: [Bool] = Array(repeating: false, count: peopleCount+1)
//if truthCount != 0 {
//	for i in 1..<secondLine.count {
//		truthPeople[secondLine[i]] = true
//	}
//}
//
//var parties: [[Int]] = []
//for _ in 0..<partyCount {
//	var currentLine = readLine()!.split(separator: " ").map{Int($0)!}
//	currentLine.removeFirst()
//	let currentPartyPeople = currentLine
//	parties.append(currentPartyPeople)
//	
//	var isAddedToTruth = false
//	for person in currentPartyPeople {
//		// 만약 현재 사람이 진실 목록에 없다면 넘어가고
//		if !truthPeople[person] {
//			continue
//		} else {
//			// 진실 목록에 한명이라도 있다면 이 파티 모두 진실목록에 추가
//			isAddedToTruth = true
//			break
//		}
//
//	}
//	
//	if isAddedToTruth {
//		currentPartyPeople.forEach {
//			truthPeople[$0] = true
//		}
//	}
//}
//var result: Int = 0
//for party in parties {
//	for person in party {
//		if truthPeople[person] {
//			break
//		}
//		
//		if party.last! == person {
//			result += 1
//		}
//	}
//}
//
//print(result)
