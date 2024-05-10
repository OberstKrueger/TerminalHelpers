import iTunesLibrary

func read(filter: String?) -> [String: [String: Int]] {
    let library = try! ITLibrary(apiVersion: "1.0", options: .lazyLoadData)

    var music: [String: [String: Int]] = [:]

    for song in library.allMediaItems.filter({ $0.mediaKind == .kindSong }) {
        let artist = song.album.albumArtist ?? "Unknown Artist"
        let genre = song.genre
        let year = song.year

        if genre == filter ?? genre {
            let check = music[genre, default: [:]][artist, default: Int.max]

            if year < check {
                music[genre, default: [:]][artist] = year
            }
        }
    }

    return music
}
