import ArgumentParser

struct Arguments: ParsableArguments {
    @Option(name: .customShort("g"), help: "Provide results for a specific genre.")
    var genre: String?
}
