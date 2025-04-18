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
      targets: ["VeriffNFC"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Veriff/veriff-ios-spm", .exact("8.0.0"))
  ],
  targets: [
    .binaryTarget(
      name: "VeriffNFC",
      url: "https://cdn.veriff.me/ios/com/veriff/veriffnfcsdk/8.0.0/veriffnfcsdk-8.0.0.zip",
      checksum: "94629fa9889e8bf385a6461b0722bb5d6ee939e5fd282c996fa07affdf215b94"
    )
  ]
)
