// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterBidMachine",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterBidMachine",
            targets: ["REVUPMediaMaxAdapterBidMachineTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-BidMachine.git", exact: "308020000.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterBidMachineTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterBidMachine"),
                .product(name: "AppLovinMediationBidMachineAdapter", package: "AppLovin-MAX-Swift-Package-BidMachine"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterBidMachine.zip",
            checksum: "299b4878d9fcc57e4fdc8958aeb6771185eaf43cc9e85802dcc1cb670c818c19"
        ),
    ]
)
