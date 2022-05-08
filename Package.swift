// swift-tools-version:5.6
import PackageDescription
let package = Package(
    name: "date-route",
    platforms: [.macOS(.v11), .iOS(.v13)],
    products: [
        .executable(name: "date-route", targets: ["date-route"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.10.0")
    ],
    targets: [
        .target(
            name: "date-route",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "date-routeTests",
            dependencies: ["date-route"])
    ]
)
