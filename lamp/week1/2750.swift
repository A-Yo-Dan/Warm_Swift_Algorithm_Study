let N = Int(readLine()!)!

var arr:[Int] = []

for _ in 0..<N {
    let input = Int(readLine()!)!
    arr.append(input)
}

for i in arr.sorted(by: { $0 < $1 }) {
    print(i)
}