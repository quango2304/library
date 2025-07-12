// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "library",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "library",
            targets: ["library"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/livekit/client-sdk-swift", from: "2.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "library",
            path: "ts-voice-agent-kmp.xcframework"
        )
    ]
)
