// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "XMLMapper",
    products: [
        .library(name: "XMLMapper", targets: ["XMLMapper"]),
    ],
    targets: [
        .target(name: "XMLMapper", path: "./XMLMapper/Classes"),
        .testTarget(name: "XMLMapperTests", dependencies: ["XMLMapper"], path: "./XMLMapperTests/Tests"),
    ],
    swiftLanguageVersions: [3, 4]
)
