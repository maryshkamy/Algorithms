func palindrome(text: String) -> Bool {
    let reverse = String(text.reversed())
    return text.lowercased() == reverse.lowercased()
}

print("Is `arara` a palindrome? \(palindrome(text: "arara"))")
print("Is `madam` a palindrome? \(palindrome(text: "madam"))")
print("Is `banana` a palindrome? \(palindrome(text: "banana"))")
print("Is `racecar` a palindrome? \(palindrome(text: "racecar"))")