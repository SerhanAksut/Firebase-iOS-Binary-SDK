// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseiOSSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "FirebaseCore",
            targets: ["FirebaseCore"]
        ),
        .library(
            name: "FirebaseFirestore",
            targets: ["FirebaseFirestore"]
        ),
        .library(
            name: "FirebaseMessaging",
            targets: ["FirebaseMessaging"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FirebaseCore",
            path: "FirebaseCore.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseFirestore",
            path: "FirebaseFirestore.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            path: "FirebaseMessaging.xcframework"
        )
    ]
)
