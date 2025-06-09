import Foundation
import OKTerminalColors

let first: UInt
let second: UInt

let arguments = Arguments.parseOrExit()
var results: [UInt] = []

switch (arguments.first, arguments.second) {
case (.some(let f), .none):
    first = 1
    second = f
case (.some(let f), .some(let s)):
    first = f
    second = s
default:
    first = 1
    second = 10
}

if arguments.unique && (second - first + 1) < arguments.count {
    print("ERROR: More unique numbers requested than the range provided.".color(.red))
    print("Requested: \(arguments.count), Range: \(first)-\(second)".color(.red))
    exit(EXIT_FAILURE)
}

while results.count < arguments.count {
    let random = UInt.random(in: min(first, second)...max(first, second))

    if arguments.unique == false || results.contains(random) == false {
        results.append(random)
    }
}

if arguments.sort {
    results.sort()
}

results.forEach {
    print($0)
}
