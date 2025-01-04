/*
 LeetCode Link: https://leetcode.com/problems/longest-consecutive-sequence/description/

 128. Longest Consecutive Sequence
 Medium | Topics | Companies

 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

 You must write an algorithm that runs in O(n) time.

 Example 1:
    Input: nums = [100,4,200,1,3,2]
    Output: 4
    Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

 Example 2:
    Input: nums = [0,3,7,2,5,8,4,6,0,1]
    Output: 9

 Constraints:
    * 0 <= nums.length <= 10ˆ5
    * -10ˆ9 <= nums[i] <= 10ˆ9
 */

func longestConsecutive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }

    var numSet = Set(nums)
    var maxLength = 0

    for num in numSet {
        if !numSet.contains(num - 1) {
            var currentNum = num
            var currentLength = 1

            while numSet.contains(currentNum + 1) {
                currentNum += 1
                currentLength += 1
            }

            maxLength = max(maxLength, currentLength)
        }
    }

    return maxLength
}

let case1 = longestConsecutive([100, 4, 200, 1, 3, 2])
print("Case 1 - Output: \(case1) - Expected: 4")

let case2 = longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
print("Case 2 - Output: \(case2) - Expected: 9")

let case3 = longestConsecutive([0])
print("Case 3 - Output: \(case3) - Expected: 1")

let case4 = longestConsecutive([1, 2, 3, 4, 100, 101, 102, 103, 104])
print("Case 4 - Output: \(case4) - Expected: 5")

/*
 Time Complexity: O(n)
 Space Complexity: O(n)
 */
