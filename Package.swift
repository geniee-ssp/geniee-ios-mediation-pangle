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
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
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
            url: "https://github.com/unigeniee/geniee-ios-mediation-pangle/releases/download/7.9.100/GenieeMediationPangle.7.9.1.0.zip",
            checksum: "b3e1d1ead6261a48c6fc855cf0198d648719ac059cba87a71fd0caf986269fbd"
        )
    ]
)
