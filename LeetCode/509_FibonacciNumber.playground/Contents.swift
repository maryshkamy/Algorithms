/*
 LeetCode Link: https://leetcode.com/problems/fibonacci-number/description/

 509. Fibonacci Number
 Easy | Topics | Companies

 The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

 F(0) = 0, F(1) = 1
 F(n) = F(n - 1) + F(n - 2), for n > 1.
 Given n, calculate F(n).

 Example 1:
    Input: n = 2
    Output: 1
    Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.

 Example 2:
    Input: n = 3
    Output: 2
    Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.

 Example 3:
    Input: n = 4
    Output: 3
    Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.

 Constraints:
    * 0 <= n <= 30
 */

func fib(_ n: Int) -> Int {
    guard n > 1 else { return n }

    return fib(n - 1) + fib(n - 2)
}

let case1 = fib(2)
print("Case 1 - Output: \(case1) - Expected: 1")

let case2 = fib(3)
print("Case 2 - Output: \(case2) - Expected: 2")

let case3 = fib(4)
print("Case 3 - Output: \(case3) - Expected: 3")

/*
 Time Complexity: O(2ˆn)
 Space Complexity: O(n)
 */
