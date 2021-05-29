// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "LayoutSwift",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "LayoutSwift", targets: ["LayoutSwift"]),
  ],
  targets: [
    .target(name: "LayoutSwift", dependencies: []),
  ]
)
