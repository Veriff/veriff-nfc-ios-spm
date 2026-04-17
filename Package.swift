// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "VeriffNFC",
  platforms: [
    .iOS(.v15)
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
      url: "https://cdn.veriff.me/ios/com/veriff/veriffnfcsdk/10.1.0/veriffnfcsdk-10.1.0.zip",
      checksum: "1c9c4bddacfa8c22a079f22cf3593f427beb38a81d19aac0919ef9a24975a66c"
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
