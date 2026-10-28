// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationPangle",
            targets: ["GenieeMediationPangleTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
        ),
        .package(
            url: "https://github.com/bytedance/AdsGlobalPackage.git",
            exact: "7.9.1-release.1"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationPangleTarget",
            dependencies: [
                "GenieeMediationPangle",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            path: "Sources/GenieeMediationPangleTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationPangle",
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-pangle/releases/download/7.9.101/GenieeMediationPangle.7.9.1.1.zip",
            checksum: "273ea751595a9b6322fb0ed42cfa30e2b2d754fa26d345fc0dd269c6f0144167"
        )
    ]
)
