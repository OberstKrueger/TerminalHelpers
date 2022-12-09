import ArgumentParser

struct Arguments: ParsableArguments {
    @Argument(help: "The first number provided.")
    var first: UInt?

    @Argument(help: "The second number provided.")
    var second: UInt?

    @Option(name: .customShort("r"), help: "How many times to randomize the number.")
    var count: Int = 1

    @Flag(name: .customShort("s"), help: "Sort the output in numerical order from lowest to highest.")
    var sort: Bool = false
}
