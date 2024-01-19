//
//  main.swift
//  ProblemSolving_2512
//
//  Created by YOUJIM on 2023/05/28.
//

import Foundation

func binarySearch(_ list: [Int],_ target: Int){
    var result = 0
    var left = 1
    var right = list[list.count - 1]
    var assignBudget = 0
    
    while left <= right {
        var tempBudget = 0
        let mid = (left + right) / 2
        
        if requestBudget(list: list, target: target, budget: mid, tempBudget : &tempBudget) {
            if tempBudget >= assignBudget {
                assignBudget = tempBudget
                result = mid
                left = mid + 1
            }
        }
        else {
            right = mid - 1
        }
    }
    print(result)
}

func requestBudget(list : [Int], target : Int, budget : Int, tempBudget : inout Int) -> Bool {
    var totalBudget = 0
    
    for i in 0 ..< list.count { totalBudget += list[i] - budget <= 0 ? list[i] : budget }
    
    if totalBudget <= target {
        tempBudget = totalBudget
        return true
    }
    else {
        return false
    }
}

readLine()
var budgets = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
let totalBudget = Int(readLine()!)!

binarySearch(budgets, totalBudget)
