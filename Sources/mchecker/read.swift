import iTunesLibrary

func newRead() -> [String: [String: Int]] {
    let library = try! ITLibrary(apiVersion: "1.0", options: .lazyLoadData)

    var music: [String: [String: Int]] = [:]

    for song in library.allMediaItems.filter({ $0.mediaKind == .kindSong }).filter({ genreCheck(genre: $0.genre) }) {
        let artist = song.album.albumArtist ?? "Unknown Artist"
        let genre = song.genre
        let year = song.year

        let check = music[genre, default: [:]][artist, default: Int.max]

        if year < check {
            music[genre, default: [:]][artist] = year
        }
    }

    return music
}

func genreCheck(genre: String) -> Bool {
    switch genre {
    case "Epic Metal": return true
    case "Industrial": return true
    case "Metal"     : return true
    case "Rock"      : return true
    default          : return false
//    case "ASMR":       return false
//    case "Comedy":     return false
//    case "Film":       return false
//    case "Gaming":     return false
//    case "Holiday":    return false
//    case "Learning":   return false
//    case "Noise":      return false
//    case "Soundtrack": return false
//    case "Theme Park": return false
//    default:           return true
    }
}
