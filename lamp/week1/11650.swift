let N = Int(readLine()!)!
var co_dict: [Int : [Int] ] = [:]

for i in 0..<N{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    if co_dict[input[0]] == nil {
        co_dict[input[0]] = []
    }
    
    co_dict[input[0]]!.append(input[1])
}

for x in co_dict.keys.sorted(){
    for y in co_dict[x]!.sorted(){
        print(x,y)
    }
 }