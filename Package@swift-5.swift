// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XMLMapper",
    platforms: [
        .watchOS(.v2),
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9),
    ],
    products: [
        .library(name: "XMLMapper", targets: ["XMLMapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.9.0"))
    ],
    targets: [
        .target(name: "XMLMapper",
                dependencies: ["Alamofire"],
                path: "./XMLMapper/Classes",
               ),
        .testTarget(name: "XMLMapperTests", dependencies: ["XMLMapper"], path: "./XMLMapperTests/Tests"),
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
