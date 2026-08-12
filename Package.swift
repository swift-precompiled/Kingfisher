// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "Kingfisher",
    platforms: [
        .iOS("12.0"),
        .macOS("10.14"),
        .tvOS("12.0"),
        .watchOS("5.0"),
        .visionOS("1.0")
    ],
    products: [
        .library(
            name: "Kingfisher",
            targets: ["Kingfisher_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "Kingfisher_Aggregation",
            dependencies: ["Kingfisher"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Kingfisher",
            url: "https://github.com/swift-precompiled/Kingfisher/releases/download/7.12.0/Kingfisher-4ee2091e366c447ae49be559db8734874aa63ee640eb81fc18fce9b27cb8813f.xcframework.zip",
            checksum: "4ee2091e366c447ae49be559db8734874aa63ee640eb81fc18fce9b27cb8813f"
        ),
        .target(
            name: "Kingfisher_PrecompiledProduct",
            dependencies: ["Kingfisher_Aggregation"]
        )
    ]
)