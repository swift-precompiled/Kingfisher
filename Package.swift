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
            resources: [.process("PrivacyInfo.xcprivacy")],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Kingfisher",
            url: "https://github.com/swift-precompiled/Kingfisher/releases/download/7.12.0/Kingfisher-2d1e5a75cb56cc50ba722855131b7d263c027b39c323dc6558b93cce1d41661b.xcframework.zip",
            checksum: "2d1e5a75cb56cc50ba722855131b7d263c027b39c323dc6558b93cce1d41661b"
        ),
        .target(
            name: "Kingfisher_PrecompiledProduct",
            dependencies: ["Kingfisher_Aggregation"],
            packageAccess: false
        )
    ]
)