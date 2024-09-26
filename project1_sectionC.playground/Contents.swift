func longestConsecutiveSubsequence(_ numbers: [Int]) -> (subsequence: [Int], length: Int) {
    var longestSubseq: [Int] = []//used as the final sequence to return
    var subSeq: [Int] = [] //used to check sequence size
    var max = 0 //used to compare to subseqence size
    let sortedNumbers = numbers.sorted() // sort to check for sequences, will work for forwards and backwards
    for x in 0..<sortedNumbers.count{
        if x >= 1{ // if the index is 1 or greater it can check for the element behind it
            if sortedNumbers[x - 1] + 1 == sortedNumbers[x]{
                subSeq.append(sortedNumbers[x])
                if subSeq.count > max{//if the current sequence is higher than the max, replace the max
                    max = subSeq.count
                    longestSubseq = subSeq
                }
            }
            else{//if the sequence breaks, reset the current sequence
                subSeq = []
            }
        }
        else{//the first element initializes the first sequence and the max
            max = 1
            subSeq.append(sortedNumbers[x])
        }
    }
    
    
    return (longestSubseq, max)
}

// Example usage
let numbers = [1, 9, 3, 10, 4, 20, 2]
let result = longestConsecutiveSubsequence(numbers)
print("Longest Consecutive Subsequence: \(result.subsequence), Length: \(result.length)")

