let input = readLine()!.split(separator: " ").map { Int($0)! }
let K = input[0]
let N = input[1]
var arr: [Int] = []

for _ in 0..<K {
    let input = Int(readLine()!)!
    arr.append(input)
}

func solve(_ x:Int) -> Bool {
    let count = arr.reduce(0) { $0 + $1/x }
    return count >= N
}

var st = 1
var en = 0x7FFFFFFF // 2^{31}-1

while st < en {
    let mid = (st+en+1)/2

    if solve(mid) {
        st = mid
    }
    else {
        en = mid - 1
    }
}

print(st)