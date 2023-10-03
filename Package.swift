// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebViewPackage_Lib",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WebViewPackage_Lib",
            targets: ["WebViewPackage_Lib"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/sreynin/StoryboardRute_Lib.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WebViewPackage_Lib",
            dependencies: [
                .product(name: "StoryboardRoutePackage_Lib",package: "StoryboardRute_Lib")]),
        .testTarget(
            name: "WebViewPackage_LibTests",
            dependencies: ["WebViewPackage_Lib"]),
    ]
)
