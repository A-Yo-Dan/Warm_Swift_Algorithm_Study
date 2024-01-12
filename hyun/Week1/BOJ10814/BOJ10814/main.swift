//
//  main.swift
//  BOJ10814
//
//  Created by 정현우 on 1/7/24.
//

import Foundation

let count = Int(readLine()!)!

var userList: [(age: Int, name: String)] = []

for _ in 0..<count {
	let user: [String] = readLine()!.split(separator: " ").map { String($0) }
	let userTuple: (age: Int, name: String) = (Int(user[0])!, user[1])
	
	userList.append(userTuple)
}

userList.sort(by: {$0.age < $1.age})

for user in userList {
	print("\(user.age) \(user.name)")
}

