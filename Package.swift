// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "TerminalHelpers",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.2.3"),
        .package(url: "https://github.com/OberstKrueger/OKTerminalColors", exact: "0.2.0")
    ],
    targets: [
        .executableTarget(
            name: "mchecker",
            dependencies: [
                .product(name: "OKTerminalColors", package: "OKTerminalColors"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .executableTarget(
            name: "random",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
