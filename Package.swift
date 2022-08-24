// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS)

let package = Package(
    name: "AEPProtocols",
		platforms: [
		.iOS(.v10)
		],
    products: [
        .library(
            name: "AEPProtocols",
            targets: ["AEPProtocols"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
		    .package(url: "https://github.com/ralph-e-boy/aepsdk-core-ios.git", .branch("main"))
    ],
    targets: [
        .target(
            name: "AEPProtocols",
            dependencies: [
					     .product(name: "AEPCore", package: "aepsdk-core-ios"),
					     .product(name: "Logging", package: "swift-log")
            ]),
        .testTarget(
            name: "AEPProtocolsTests",
            dependencies: ["AEPProtocols"]),
    ]
)

#endif
