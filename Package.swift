// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "VeriffNFC",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "VeriffNFC",
      targets: ["VeriffNFCTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/krzyzanowskim/OpenSSL-Package.git", from: "3.3.2000")
  ],
  targets: [
    .binaryTarget(
      name: "VeriffNFC",
      url: "https://cdn.veriff.me/ios/com/veriff/veriffnfcsdk/8.9.0/veriffnfcsdk-8.9.0.zip",
      checksum: "e2f7cd8a0af5d7405871813f3ebca9d39eaef4cdd3d980020b6906cd1f20f541"
    ),
    .target(
      name: "VeriffNFCTarget",
      dependencies: [
        .target(name: "VeriffNFC"),
        .product(name: "OpenSSL", package: "OpenSSL-Package")
      ]
    )
  ]
)
