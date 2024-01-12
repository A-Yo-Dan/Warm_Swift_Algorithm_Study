//
//  10814.swift
//  Algorithm
//
//  Created by 이재혁 on 1/12/24.
//

import Foundation

struct Members {
    var age: Int = 0
    var name: String = ""
    var order: Int = 0
}

let numbers: Int = Int(readLine()!)!
var membersArr = [Members](repeating: Members(), count: numbers)

for i in 1...numbers {
    let inputMembers = readLine()!.split(separator: " ").map{ String($0) }
    let age = Int(inputMembers[0])!
    
    membersArr[i-1].age = age
    membersArr[i-1].name = inputMembers[1]
    membersArr[i-1].order = i
}

membersArr.sort(by:
                    {
    if $0.age == $1.age { return $0.order < $1.order }
    return $0.age < $1.age}
)

for member in membersArr {
    print("\(member.age) \(member.name)")
}
