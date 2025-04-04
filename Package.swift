
// swift-tools-version:5.9


import PackageDescription

let package = Package(
    name: "SocketRocket",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
    ],
    products: [
        .library(
            name: "SocketRocket",
            type: .dynamic,
            targets: ["SocketRocketTarget"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SocketRocketTarget",
            path: "SocketRocket",
            publicHeadersPath: "",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Internal"),
                .headerSearchPath("Internal/Delegate"),
                .headerSearchPath("Internal/IOConsumer"),
                .headerSearchPath("Internal/Proxy"),
                .headerSearchPath("Internal/RunLoop"),
                .headerSearchPath("Internal/Security"),
                .headerSearchPath("Internal/Utilities")
            ]
        )
    ]
)
