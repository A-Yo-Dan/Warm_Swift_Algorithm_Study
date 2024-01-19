//
//  main.swift
//  ProblemSolving_1654
//
//  Created by YOUJIM on 2023/06/23.
//

// input[0] == 오영식이 이미 가지고 있는 랜선의 개수 K, input[1] == 필요한 랜선의 개수

var input = readLine()!.split(separator: " ").map {Int($0)!}
var lines = [Int]()

for _ in 0 ..< input[0] { lines.append(Int(readLine()!)!) }

var start = 0
var end = lines.max()! + 1

while (start + 1) < end {
    let mid = (start + end) / 2
    var sum = 0
    
    for line in lines {
        if line >= mid { sum += (line / mid) }
    }
    
    if sum >= input[1] { start = mid }
    else { end = mid }
}

print(start)
