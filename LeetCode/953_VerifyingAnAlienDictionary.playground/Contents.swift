func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    guard words.count > 1, order.count == 26 else { return true }

    let order = Array(order)
    var hashOrder: [Character: Int] = [:]
    for i in 0..<order.count {
        hashOrder[order[i]] = i;
    }

    for i in 0..<words.count - 1 {
        let firstWord = Array(words[i])
        let secondWord = Array(words[i + 1])

        for j in 0..<firstWord.count {
            if j >= secondWord.count {
                return false
            }

            guard let firstIndex = hashOrder[firstWord[j]],
                    let secondIndex = hashOrder[secondWord[j]] else { return false }

            if firstIndex != secondIndex {
                if secondIndex < firstIndex {
                    return false
                } else {
                    break
                }
            }
        }
    }

    return true
}
