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

for _ in 1...arguments.count {
    let random: UInt = UInt.random(in: first...second)

    print(random)
}
