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
      url: "https://cdn.veriff.me/ios/com/veriff/veriffnfcsdk/9.1.0/veriffnfcsdk-9.1.0.zip",
      checksum: "ffdce33d40cd66586c6137c0c679ba32e7229bbd3296430d477563a4f415dabf"
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
