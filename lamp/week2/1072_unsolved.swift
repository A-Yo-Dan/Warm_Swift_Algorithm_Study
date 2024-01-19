let input = readLine()!.split(separator: " ").map { Int($0)! }

let x = input[0]
let y = input[1]
let z = y/x*100

func solve(_ k: Int) -> Bool {
    let deltaZ = (y+k)*100/(x+k) - z
    // print("deltaZ:",deltaZ) 덥/덥*100 -> 덥*100/덥 아잇ㅅ싯 팔 부동소수점
    return deltaZ >= 1
}

var st = 0
var en = Int(1e9) - x

while st <= en {
    let mid = (st+en)/2

    print("st : \(st), en : \(en), mid : \(mid)")

    if solve(mid) {
        en = mid - 1
    } 
    else {
        st = mid + 1
    }
        
}

print(st)

