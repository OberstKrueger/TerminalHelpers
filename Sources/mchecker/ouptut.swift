import OKTerminalColors

func output(input: (String, [String: Int])) {
    let target: Int = 1

    var first = Int.max
    var last = Int.min
    var years: [Int: [String]] = [:]

    for artist in input.1 {
        first = min(first, artist.value)
        last = max(last, artist.value)
        years[artist.value, default: []].append(artist.key)
    }

    print("\n\(input.0) (\(input.1.count))")

    for year in first...last {
        let artists = years[year, default: []].sorted().joined(separator: ", ")

        switch years[year, default: []].count {
        case ...(target - 1): print("\(year) => \(artists)".color(.blue))
        case (target + 1)...: print("\(year) => \(artists)".color(.red))
        default:   print("\(year) => \(artists)")
        }
    }
}

