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
      url: "https://cdn.veriff.me/ios/com/veriff/veriffnfcsdk/8.4.0/veriffnfcsdk-8.4.0.zip",
      checksum: "690cd9b6bf6211c78c816bb1610f51c9b7025b2a1c4579e0fcfac5cf308e41df"
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
