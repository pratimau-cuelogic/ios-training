/* 
Assignment 1 - Implement Merge Sort algorithm

Swift concepts used:

1. Constants and variables
2. Optional variables
2. Collections - Array
3. Functions
4. Loops
5. Condiional Statements
*/

import UIKit

// list to sort
let aList = [23, 11, 34, 20, 33, 55, 87, 76, 90, 43, 77]

func mergeSort(list: [Int]) -> [Int]? {

    if(list.count == 0) {
        return nil
    }
    
    if (list.count == 1) {
        return list
    }
    
    let leftSlice = list[0 ..< list.count/2]
    let rightSlice = list[list.count/2 ..< list.count]

    let leftPart = Array(leftSlice)
    let rightPart = Array(rightSlice)
    
    let leftSorted = mergeSort(leftPart)!
    let rightSorted = mergeSort(rightPart)!
    
    let totalCount = leftSorted.count + rightSorted.count
    var li = 0, ri = 0, i = 0
    var sortedList = [Int]()
    
    while (i < totalCount) {
        if (li < leftSorted.count && ri < rightSorted.count) {
            if(leftSorted[li] < rightSorted[ri]) {
                sortedList.append(leftSorted[li++])
            } else {
                sortedList.append(rightSorted[ri++])
            }
            i++
        } else {
            if (li >= leftSorted.count) {
                while (ri < rightSorted.count) {
                    sortedList.append(rightSorted[ri++]);
                    i++;
                }
            }
            if (ri >= rightSorted.count) {
                while (li < leftSorted.count) {
                    sortedList.append(leftSorted[li++]);
                    i++;
                }
            }
        }
    }
    
    return sortedList
}

let sortedList = mergeSort(aList)!
print("Sorted List: \(sortedList)")
