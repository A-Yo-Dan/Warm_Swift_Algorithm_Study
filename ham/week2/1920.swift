
let countN = Int(readLine()!)!
let N = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

let countM = Int(readLine()!)!
let M = readLine()!.split(separator: " ").map { Int(String($0))! }

for item in M {
    print("\(binarySearch(N, num: item))")
}

// 반복문으로 구현하기
func binarySearch(_ array: [Int], num: Int) -> Int {
    //var array = array.sorted()
    var start = 0
    var end = (array.count - 1)
    
    while start <= end {
        let mid = (start + end) / 2
        
        if array[mid] == num { return 1 }
        if array[mid] > num {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return 0
}
