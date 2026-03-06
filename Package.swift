// swift-tools-version:5.5

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.4"
    static let checksum: String = "1ef0777525f50c8b29171992fc759821b41a611d2d09fe38c7d9676ef1542985"
}

let package = Package(
    name: "GoogleCast",
    platforms: [
        .iOS(.v15)
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
