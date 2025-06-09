import Foundation
import OKTerminalColors

struct QRCode {
    private var pixels: [[Bool]] = []

    init(text: String) {
        encode(text)
    }
    
    func printCode() {
        print(self)
    }
    
    mutating func encode(_ text: String) {
        // magic goes here
    }
}

extension QRCode: CustomStringConvertible {
    var description: String {
        // print code goes here
        return ""
    }
}
