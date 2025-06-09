import ArgumentParser

struct Arguments: ParsableArguments {
    @Argument(help: "The text to encode into a QR code.")
    var text: String
}