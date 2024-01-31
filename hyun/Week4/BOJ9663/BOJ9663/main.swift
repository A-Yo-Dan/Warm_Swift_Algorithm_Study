//
//  main.swift
//  BOJ9663
//
//  Created by 정현우 on 1/31/24.
//

// 배경 지식: 퀸은 상하좌우 대각선 총 8방향 끝까지 이동 가능

import Foundation

let N = Int(readLine()!)!

// table[0] = 2 라면 (0, 2)에 퀸이 있다는 뜻
var table: [Int] = Array(repeating: -1, count: N)

func isItOk(row: Int, col: Int) -> Bool {
	// 같은 열이거나 대각선이 같다면
	for i in 0..<row {
		if table[i] == col || abs(row - i) == abs(col - table[i]) { return false }
	}

	return true
}

var result = 0
func dfs(row: Int) {
	// row가 끝까지 도달했다면
	if row == N {
		result += 1
		return
	}
	
	for col in 0..<N {
		if isItOk(row: row, col: col) {
			table[row] = col
			dfs(row: row+1)
		}
		
	}
}

dfs(row: 0)
print(result)

















/*
시간 초과

let N = Int(readLine()!)!

var table: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)

// 해당 좌표에 넣었을 때 괜찮은가
func isItOk(row: Int, col: Int) -> Bool {
	// 같은 행 체크
	if table[row].contains(true) { return false }
	
	// 같은 열 체크
	for i in 0..<N {
		if table[i][col] {
			return false
		}
	}
	
	// 좌상 대각선 체크
	var i = row - 1
	var j = col - 1
	while i >= 0 && j >= 0 {
		if table[i][j] {
			return false
		}
		i -= 1
		j -= 1
	}
	
	// 우상 대각선 체크
	i = row + 1
	j = col - 1
	while i < N && j >= 0 {
		if table[i][j] {
			return false
		}
		i += 1
		j -= 1
	}
	
	// 좌하 대각선 체크
	i = row - 1
	j = col + 1
	while i >= 0 && j < N {
		if table[i][j] {
			return false
		}
		i -= 1
		j += 1
	}
	
	// 우하 대각선 체크
	i = row + 1
	j = col + 1
	while i < N && j < N {
		if table[i][j] {
			return false
		}
		i += 1
		j += 1
	}

	return true
}

var result: Int = 0
func dfs(row: Int) {
	// row가 끝까지 도달했다면
	if row == N {
		result += 1
		return
	}
	
	for col in  0..<N {
		if isItOk(row: row, col: col) {
			table[row][col] = true
			dfs(row: row+1)
			
			// 백트래킹
			table[row][col] = false
		}
	}
}

dfs(row: 0)

print(result)

*/
