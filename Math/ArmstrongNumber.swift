import Foundation

// MARK - One way to solve the problem of Armstrong Number.

print("Armstrong Number\n")

var number: Int = 153
var word: String = String(number)
var count: Double = Double(word.count)
var armstrong: Int = 0
var n: Int = Int(number)

repeat
{
    armstrong = armstrong + Int(pow(Double(n % 10), count))
    n = Int(n/10)
} while n != 0

if number == armstrong
{
    print("\(number) is an Armstrong Number!")
}
else
{
    print("\(number) is not an Armstrong Number!")
}