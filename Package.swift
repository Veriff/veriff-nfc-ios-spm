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
      url: "https://cdn.veriff.me/ios/com/veriff/veriffnfcsdk/10.0.0/veriffnfcsdk-10.0.0.zip",
      checksum: "1b76d92244c3d1f5869a95157fd9b0b19dab69a226b1b1f44b15875ee11c3d11"
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
