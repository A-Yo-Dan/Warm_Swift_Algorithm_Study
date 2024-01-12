//
//  main.swift
//  ProblemSolving_2750
//
//  Created by YOUJIM on 1/12/24.
//

import Foundation

var arr = [Int]()

for _ in 0 ..< Int(readLine()!)! { arr.append(Int(readLine()!)!) }

arr.sort()

for num in arr { print(num) }
