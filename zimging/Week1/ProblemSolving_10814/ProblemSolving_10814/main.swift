//
//  main.swift
//  ProblemSolving_10814
//
//  Created by YOUJIM on 1/12/24.
//

import Foundation

var infos = [String: Double]()

for _ in 0 ..< Int(readLine()!)! {
    var input = readLine()!.components(separatedBy: " ")
    var temp = [input[1] : Double(input[0])!]
    
    while infos.contains(where: { $0.value == temp.first!.value }) {
        temp.updateValue(temp.first!.value + 0.1, forKey: temp.first!.key)
    }
    
    infos.updateValue(temp.first!.value, forKey: temp.first!.key)
}

let sorted = infos.sorted {
    if $0.value == $1.value { return $0.key < $1.key }
    return $0.value < $1.value
}

for sort in sorted {
    print("\(Int(floor(sort.value))) \(sort.key)")
}
