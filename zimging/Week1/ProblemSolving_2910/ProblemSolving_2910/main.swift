//
//  main.swift
//  ProblemSolving_2910
//
//  Created by YOUJIM on 1/11/24.
//

//import Foundation
//
//var nc = readLine()!.components(separatedBy: " ").map { Int($0)! }
//var inputs = readLine()!.components(separatedBy: " ").map { Int($0)! }
//var nums = [(Int, Int, Int)]() // 숫자, 빈도, 순서
//
//for i in 0 ..< nc[0] {
//    for j in 0 ... nums.count {
//        if j == nums.count { nums.append((inputs[i], 1, i + 1))}
//        else if inputs[i] == nums[j].0 {
//            nums[j].1 += 1
//            break
//        }
//    }
//}
//
//nums.sort {
//    if $0.1 == $1.1 { return $0.2 < $1.2 }
//    return $0.1 > $1.1
//}
//
//for num in nums {
//    for _ in 0 ..< num.1 { print("\(num.0)", terminator: " ")}
//}

// ---------------------

import Foundation

var nc = readLine()!.components(separatedBy: " ").map { Int($0)! }
var inputs = readLine()!.components(separatedBy: " ").map { Int($0)! }
var nums = [Int : (Int, Int)]()

for i in 0 ..< nc[0] {
    if let index = nums.first(where: { $0.key == inputs[i] }) {
        nums.updateValue((index.value.0 + 1, index.value.1), forKey: index.key)
    }
    else {
        nums.updateValue((1, i), forKey: inputs[i])
    }
}

print(nums)

var sorted = nums.sorted {
    if $0.value.0 == $1.value.0 { return $0.value.1 < $1.value.1 }
    return $0.value.0 > $1.value.0
}

print(sorted)

for sort in sorted {
    for _ in 0 ..< sort.value.0 { print(sort.key, terminator: " ")}
}
