let inputArray = readLine()!.split(separator: " ").map { Int(String($0))! }

var X = inputArray[0]
var Y = inputArray[1]
var Z = (Y * 100) / X

var answer: Int = -1

var left = 1
var right = 1000000000

while left <= right {
    let mid: Int = (left + right) / 2
    
    let newX = X + mid
    let newY = Y + mid
    let newZ = (newY * 100) / newX
    
    if Z != newZ {
        right = mid - 1
        answer = mid
    } else {
        left = mid + 1
    }
}

print(answer)
