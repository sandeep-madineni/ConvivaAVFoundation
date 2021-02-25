// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaAVFoundation",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaAVFoundation",
            targets: ["ConvivaAVFoundationTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaAVFoundation",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.1/ConvivaAVFoundation/ConvivaAVFoundation.xcframework.zip",
            checksum: "6b48c69a6422399eb4628b5e36715b6534cf389545d496dde7bcc0410208c6d4"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.1/ConvivaSDK/ConvivaSDK.xcframework.zip",
            checksum: "e36cf674d3c9e7c677bc5a9f7fd303646a390c061577174618afb12b13129def"),

        .target(
              name: "ConvivaAVFoundationTarget",
              dependencies: [
                .target(name: "ConvivaSDK"),
                .target(name: "ConvivaAVFoundation")
              ],
              path: "PlatformExcludes"
            )
     ]
)
