/*
 LeetCode Link: https://leetcode.com/problems/reverse-string/description/

 344. Reverse String
 Easy | Topics | Companies | Hint

 Write a function that reverses a string. The input string is given as an array of characters s.

 You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:
    Input: s = ["h","e","l","l","o"]
    Output: ["o","l","l","e","h"]

 Example 2:
    Input: s = ["H","a","n","n","a","h"]
    Output: ["h","a","n","n","a","H"]

 Constraints:
    * 1 <= s.length <= 105
    * s[i] is a printable ascii character.
 */

func reverseString(_ s: inout [Character]) {
    var right = s.count - 1

    for i in 0..<(s.count/2) {
        let temp = s[i]

        s[i] = s[right]
        s[right] = temp

        right -= 1
    }
}

var case1: [Character] = ["h","e","l","l","o"]
reverseString(&case1)
print("Case 1 - Output: \(case1) - Expected: [\"o\",\"l\",\"l\",\"e\",\"h\"]")

var case2: [Character] = ["H","a","n","n","a","h"]
reverseString(&case2)
print("Case 2 - Output: \(case2) - Expecteds: [\"h\",\"a\",\"n\",\"n\",\"a\",\"H\"]")

/*
 Time Complexity: O(n)
    * The for loop runs n/2 times, where n is the length of the array s.
    This simplifies to O(n) since constant factors are disregarded in Big O notation.

 Space Complexity: O(1)
    * This function modifies the array s in place and only uses a few extra variables
    (right and temp), which are constant in space usage. No additional space is
    required that grows with the input size.
 */
