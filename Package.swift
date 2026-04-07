// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterBidMachine",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterBidMachine",
            targets: ["REVUPMediaMaxAdapterBidMachineTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterBidMachineTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterBidMachine"),
                .target(name: "REVUPMediaMaxAdapterBidMachineMediationAdapter"),
                .target(name: "BidMachine"),
                .target(name: "StackModules"),
                .target(name: "StackProductPresentation"),
                .target(name: "StackRendering"),
                .target(name: "OMSDK_Appodeal"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterBidMachine.zip",
            checksum: "81ff721a542ced5fd8c7dd23cd2314d9a6c4e0eb2aa653e93dfdbb6729bc6b96"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "7b534527aa275988c378f27be83d4fef1bda43bd1b86b60cbe39f049fcedc8fa"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/BidMachine.xcframework.zip",
            checksum: "edaf387d45e289c21aca36125b76054a58505be00b3d1b6d2b0d3305081211cd"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/StackModules.xcframework.zip",
            checksum: "618a67e0528c8e54c72e427d7f3feaefc83a0f165e0a67f96a86f155a5bb471f"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/StackProductPresentation.xcframework.zip",
            checksum: "4de41ac72abd4ce7f96694bca13a7fb365dd22ce193dda6309d55245157b8416"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/StackRendering.xcframework.zip",
            checksum: "71fb5a3dc515c6118f67c92ae9cd8d74f3b207467483c4d6657f6c2d4e6e834e"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/OMSDK_Appodeal.xcframework.zip",
            checksum: "4b8d42807926e26fbb4c6f01923d8688f1f03dccb8e9f530fa3a35ef0bebe20e"
        ),
    ]
)
