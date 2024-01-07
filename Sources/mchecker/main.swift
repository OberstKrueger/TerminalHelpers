for genre in newRead().sorted(by: { $0.key < $1.key }) {
    output(input: genre)
}
