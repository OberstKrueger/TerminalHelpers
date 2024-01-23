let arguments = Arguments.parseOrExit()

for genre in read(filter: arguments.genre).sorted(by: { $0.key < $1.key }) {
    output(input: genre)
}
