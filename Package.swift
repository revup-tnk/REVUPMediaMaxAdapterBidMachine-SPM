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
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.7.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterBidMachineTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterBidMachine"),
                .target(name: "AppLovinMediationBidMachineAdapter"),
                .product(name: "BidMachine", package: "BidMachine-SPM"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterBidMachine.zip",
            checksum: "0ae03a9b3404add7b6eb41b9215660edd2e29be588970b6dea80ef98b1ffedd6"
        ),
        .binaryTarget(
            name: "AppLovinMediationBidMachineAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bidmachine-adapter/AppLovinMediationBidMachineAdapter-3.7.1.0.0.zip",
            checksum: "feff3dc198dd1ab4a6b160c9b4405de61099052efe062b679b6c0d0e971fe072"
        )
    ]
)
