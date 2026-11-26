// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 Hyperbid. All rights reserved.

import PackageDescription

let package = Package(
    name: "HyperbidToolsMCMaxAdapter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HyperbidToolsMCMaxAdapter",
            targets: ["HyperbidToolsMCMaxAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM.git", from: "4.2.12"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.7.0")
    ],
    targets: [
        .target(
            name: "HyperbidToolsMCMaxAdapterTarget",
            dependencies: [
                "HyperbidToolsMCMaxAdapterBinary",
                .product(name: "HyperbidToolsMCSDK", package: "HyperbidToolsMCSDK_SPM"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/HyperbidToolsMCMaxAdapterWrapper"
        ),
        .binaryTarget(
            name: "HyperbidToolsMCMaxAdapterBinary",
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/MCSDK/iOS/v4.2.12/overseas/sdks/MCSDKMaxAdapter-1307.0.0.zip",
            checksum: "4d07c0fbc2968a89b989286815b1f5f949b57f64d419422c50f4f37c819f5748"
        )
    ]
)
