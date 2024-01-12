let input = readLine()!.split(separator: " ").map{ Int($0)! }

let N = input[0]
let C = input[1]

let inputArr = readLine()!.split(separator: " ").map { Int($0)! }

var numDict: [Int:Int] = [:]
var ordArr: [Int] = []

for i in inputArr {
    if numDict[i] == nil {
        numDict[i] = 1
        ordArr.append(i)
    } 
    else {
        numDict[i]! += 1
    }
}

let ordArr_sorted = ordArr.sorted {
    if numDict[$0]! == numDict[$1]! {
        return ordArr.firstIndex(of: $0)! < ordArr.firstIndex(of: $1)!
    }
    return numDict[$0]! > numDict[$1]!
}

let result = ordArr_sorted.flatMap { Array(repeating: $0, count: numDict[$0]!) }

print(result.map{ String($0) }.joined(separator: " "))