// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPermissionKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftPermissionKit",
            targets: ["SwiftPermissionKit"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftPermissionKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("Photos"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UserNotifications"),
                .linkedFramework("Contacts"),
                .linkedFramework("EventKit"),
                .linkedFramework("HealthKit"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("Speech"),
                .linkedFramework("StoreKit")
            ]
        ),
        .testTarget(
            name: "SwiftPermissionKitTests",
            dependencies: ["SwiftPermissionKit"]
        ),
    ]
)
