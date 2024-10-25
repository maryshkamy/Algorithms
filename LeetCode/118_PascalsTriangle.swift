/*
LeetCode Link: https://leetcode.com/problems/pascals-triangle/description/

Given an integer numRows, return the first numRows of Pascal's triangle.

In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

    1
   1 1
  1 2 1
 1 3 3 1
1 4 6 4 1

Example 1:

Input: numRows = 5
Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
Example 2:

Input: numRows = 1
Output: [[1]]
 

Constraints:
1 <= numRows <= 30
*/

import Foundation

/*
Time Complexity: O(nˆ2)
Lines 51 and 57
Must iterate over the number of rows to generate and each row.

Space Complexity: O(nˆ2)
Line 49
'pascalTriangle' list of lists is where the space complexity comes from.
*/

func generate(_ numRows: Int) -> [[Int]] {
    if numRows <= 0 {
        return []
    } else if numRows == 1 { 
        return [[1]]
    } else if numRows == 2 { 
        return [[1], [1, 1]]
    }

    var pascalTriangle: [[Int]] = [[1], [1, 1]] 

    for i in 3...numRows {
        let lastIndex = pascalTriangle.count - 1
        let previousRow: [Int] = pascalTriangle[lastIndex]
        var currentRow: [Int] = [1, 1]
        let difference = i - currentRow.count

        for j in 1...difference {
            let value = previousRow[j - 1] + previousRow[j]
            currentRow.insert(value, at: j)
        }

        pascalTriangle.append(currentRow)
    }

    return pascalTriangle
}

print("Test Case\n")
print("Case 1\nOutput:   \(generate(5))\nExpected: [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]\n")
print("Case 2\nOutput:   \(generate(1))\nExpected: [[1]]\n")
print("Case 3\nOutput:   \(generate(2))\nExpected: [[1], [1, 1]]\n")
print("Case 4\nOutput:   \(generate(0))\nExpected: []\n")
