/*
 LeetCode Link: https://leetcode.com/problems/longest-palindromic-substring/description/
 5. Longest Palindromic Substring
 Medium | Topics | Companies | Hint

 Given a string s, return the longest palindromic substring in s.

 Example 1:
    Input: s = "babad"
    Output: "bab"
    Explanation: "aba" is also a valid answer.

 Example 2:
    Input: s = "cbbd"
    Output: "bb"

 Constraints:
    * 1 <= s.length <= 1000
    * s consist of only digits and English letters.
 */

func longestPalindrome(_ s: String) -> String {
    guard !s.isEmpty else { return s }

    let array: [Character] = Array(s)
    var longest = String(array[0])

    for i in 0..<array.count {
        var text = String(array[i])

        if (i + 1) < array.count {
            for j in (i + 1)..<array.count {
                text.append(String(array[j]))

                if text == String(text.reversed()) && text.count > longest.count {
                    longest = text
                }
            }
        }
    }

    return longest
}

let case1 = longestPalindrome("babad")
print("Case 1 - Output: \(case1) - Expected: bab or aba")

let case2 = longestPalindrome("cbbd")
print("Case 2 - Output: \(case2) - Expected: bb")

let case3 = longestPalindrome("arara")
print("Case 3 - Output: \(case3) - Expected: arara")

let case4 = longestPalindrome("aacabdkacaa")
print("Case 4 - Output: \(case4) - Expected: aca")

let case5 = longestPalindrome("ac")
print("Case 5 - Output: \(case5) - Expected: a")

let case6 = longestPalindrome("abcd")
print("Case 6 - Output: \(case6) - Expected: a")

let case7 = longestPalindrome("civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth")
print("Case 7 - Output: \(case7) - Expected: ranynar")

/*
 Time Complexity: O(n2)
 Space Complexity: O(n)
 */
