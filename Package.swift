// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PusherSwift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PusherSwift",
            targets: ["PusherSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.0.0"),
        .package(url: "https://github.com/ashleymills/Reachability.swift", from: "4.0.0"),
        .package(url: "https://github.com/PorterHoskins/TaskQueue", from: "1.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream", from: "3.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PusherSwift",
            dependencies: ["CryptoSwift", "Reachability", "TaskQueue", "Starscream"],
            path: "Sources"),
        ]
)
