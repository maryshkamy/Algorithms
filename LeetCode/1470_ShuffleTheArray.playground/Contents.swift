/*
 LeetCode Link: https://leetcode.com/problems/shuffle-the-array/description/

 1470. Shuffle the Array
 Easy | Topics | Companies | Hint

 Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].

 Return the array in the form [x1,y1,x2,y2,...,xn,yn].

 Example 1:
    Input: nums = [2,5,1,3,4,7], n = 3
    Output: [2,3,5,4,1,7]
    Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].

 Example 2:
    Input: nums = [1,2,3,4,4,3,2,1], n = 4
    Output: [1,4,2,3,3,2,4,1]

 Example 3:
    Input: nums = [1,1,2,2], n = 2
    Output: [1,2,1,2]

 Constraints:
    * 1 <= n <= 500
    * nums.length == 2n
    * 1 <= nums[i] <= 10^3
 */

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    guard nums.count == (2 * n) else { return [] }

    var result: [Int] = []

    for i in 0..<n {
        result.append(nums[i])
        result.append(nums[i + n])
    }

    return result
}

let case1 = shuffle([2,5,1,3,4,7], 3)
print("Case 1 - Output: \(case1) - Expected: [2,3,5,4,1,7]")

let case2 = shuffle([1,2,3,4,4,3,2,1], 4)
print("Case 2 - Output: \(case2) - Expected: [1,4,2,3,3,2,4,1]")

let case3 = shuffle([1,1,2,2], 2)
print("Case 3 - Output: \(case3) - Expected: [1,2,1,2]")

/*
 Time Complexity: O(n)
    * The for loop runs n times, where n is half the length of nums.
    Each iteration performs two append operations, both of which take
    constant time. This results in an overall time complexity of O(n).

 Space Complexity: O(n)
    * I'm creating a new array result to store the shuffled output,
    which grows in size linearly with n, making the space complexity O(n).
 */
