//
//  main.swift
//  ProblemSolving_11650
//
//  Created by YOUJIM on 1/12/24.
//

import Foundation


var coordinate = [(Int, Int)]()

for _ in 0 ..< Int(readLine()!)! {
    let value = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    coordinate.append((value[0], value[1]))
}

coordinate.sort {
    if $0.0 == $1.0 { return $0.1 < $1.1 }
    return $0.0 < $1.0
}

for i in coordinate { print(i.0, i.1) }
