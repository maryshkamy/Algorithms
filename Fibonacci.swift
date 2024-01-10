print("Fibonacci\n")

func Fibonacci(N: Int) -> Int {
    if N <= 1 {
        return N
    }
    else {
        return Fibonacci(N: N - 1) + Fibonacci(N: N - 2)
    }
}

var Number = 14

for i in 1...Number {
    let fibonacci = Fibonacci(N: i)
    print("\(i) = \(fibonacci)")
}