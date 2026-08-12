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
            targets: ["Kingfisher", "Kingfisher_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/Kingfisher/releases/download/7.12.0/Kingfisher-989a76c0956eb809a03c37e6c2de1981b4f00766f2069848a1f3a7e220dbe365.xcframework.zip",
            checksum: "989a76c0956eb809a03c37e6c2de1981b4f00766f2069848a1f3a7e220dbe365"
        ),
        .target(
            name: "Kingfisher_PrecompiledProduct",
            dependencies: ["Kingfisher_Aggregation"]
        )
    ]
)