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
        .package(url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM.git", from: "4.2.11"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
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
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/MCSDK/iOS/v4.2.11/overseas/sdks/MCSDKMaxAdapter-13.6.0.3.zip",
            checksum: "9a407806646bec3852bbcecf9cbf917f59eba5c933e5d4277936acbebbc0c576"
        )
    ]
)
