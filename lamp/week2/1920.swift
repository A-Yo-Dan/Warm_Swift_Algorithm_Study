let N = Int(readLine()!)!
var N_arr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

let M = Int(readLine()!)!
let M_arr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

N_arr.sort()

func solve(target:Int) -> Bool {
    var st = 0
    var en = N_arr.endIndex - 1

    while st <= en {
        let mid = (st+en)/2

        if N_arr[mid] > target {
            en = mid - 1
        }
        else if N_arr[mid] < target {
            st = mid + 1
        }
        else if N_arr[mid] == target {
            return true 
        }
    }

    return false 
}

for mItem in M_arr {
    print(solve(target: mItem) ? 1 : 0)
}