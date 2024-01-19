let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int($0)! }
let M = Int(readLine()!)!

arr.sort()

func solve(maxB: Int) -> Bool {
// 설정된 상한액에 따라서 총 예산을 초과하는지 하지않는지 계산만 해서 Bool로 넘겨준다.
    let sum = arr.reduce(0) { $0 + min($1, maxB) }
    return sum <= M 
}

var st = 0
var en = arr.last!

while st < en {
    let mid = (st+en+1)/2
    if solve(maxB: mid) {
        st = mid 
    }
    else {
        en = mid - 1
    }
}

print(st)