let first: UInt
let second: UInt

let arguments = Arguments.parseOrExit()

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

if arguments.sort {
    var random: [UInt] = []

    for _ in 1...arguments.count {
        random.append(UInt.random(in: first...second))
    }

    random.sort()

    for number in random {
        print(number)
    }

} else {
    for _ in 1...arguments.count {
        let random: UInt = UInt.random(in: first...second)

        print(random)
    }
    var random: [UInt] = []

    for _ in 1...arguments.count {
        random.append(UInt.random(in: first...second))
    }

    random.sort()

    for number in random {
        print(number)
    }
}
