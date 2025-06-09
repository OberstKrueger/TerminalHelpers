// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "TerminalHelpers",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0"),
        .package(url: "https://github.com/OberstKrueger/OKTerminalColors", exact: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "okrn",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
