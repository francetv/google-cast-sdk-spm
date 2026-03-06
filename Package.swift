// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.3"
    static let checksum: String = "0c26e596ed94fb65b737440e580a8ab76160c3ed3f1a4ce4986ea7d3dc7bee6c"
}

let package = Package(
    name: "GoogleCast",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GoogleCast",
            targets: ["GoogleCast"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleCast",
            url:
                "https://github.com/francetv/google-cast-sdk-spm/releases/download/\(PackageMetadata.version)/GoogleCast.xcframework.zip",
            checksum: PackageMetadata.checksum
        )
    ]
)
