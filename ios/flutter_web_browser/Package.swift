// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_web_browser",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "flutter-web-browser", targets: ["flutter_web_browser"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_web_browser",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/flutter_web_browser")
            ]
        )
    ]
)
