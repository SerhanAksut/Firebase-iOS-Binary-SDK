// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseiOSSDK",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(name: "abseil", targets: ["abseil"]),
        .library(name: "FirebaseCore", targets: ["FirebaseCore"]),
        .library(name: "FirebaseFirestore", targets: ["FirebaseFirestore"]),
        .library(name: "FirebaseInstallations", targets: ["FirebaseInstallations"]),
        .library(name: "FirebaseMessaging", targets: ["FirebaseMessaging"]),
        .library(name: "GoogleDataTransport", targets: ["GoogleDataTransport"]),
        .library(name: "GoogleUtilities", targets: ["GoogleUtilities"]),
        .library(name: "nanopb", targets: ["nanopb"]),
        .library(name: "PromisesObjC", targets: ["PromisesObjC"])
    ],
    targets: [
        .binaryTarget(name: "abseil", path: "abseil.xcframework"),
        .binaryTarget(name: "FirebaseCore", path: "FirebaseCore.xcframework"),
        .binaryTarget(name: "FirebaseFirestore", path: "FirebaseFirestore.xcframework"),
        .binaryTarget(name: "FirebaseInstallations", path: "FirebaseInstallations.xcframework"),
        .binaryTarget(name: "FirebaseMessaging", path: "FirebaseMessaging.xcframework"),
        .binaryTarget(name: "GoogleDataTransport", path: "GoogleDataTransport.xcframework"),
        .binaryTarget(name: "GoogleUtilities", path: "GoogleUtilities.xcframework"),
        .binaryTarget(name: "nanopb", path: "nanopb.xcframework"),
        .binaryTarget(name: "PromisesObjC", path: "PromisesObjC.xcframework")
    ]
)
