
var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}

var tmpArray = words

var count = 0
var numOfSwaps = 0
var totalSwaps = 0
var control = 0

func Swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let firstWord = words[firstIndex]
    let secondWord = words[secondIndex]

    words[firstIndex] = secondWord
    words[secondIndex] = firstWord
    
    numOfSwaps += 1
     
}


print("Pass: \(count), Swaps: \(count)/\(totalSwaps), Array: \(words)")

func bubble(words: inout [String]) {


        numOfSwaps = 0

        for index in 0..<words.count - 1 {    
            
            if words[index + 1] < words[index] {
                Swap(words: &words, firstIndex: index, secondIndex: index + 1)
                numOfSwaps += 1
                totalSwaps += 1
                
            }
        }

        count += 1
        
        print("Pass: \(count), Swaps: \(numOfSwaps)/\(totalSwaps), Array: \(words)")


}

bubble(words: &tmpArray)
