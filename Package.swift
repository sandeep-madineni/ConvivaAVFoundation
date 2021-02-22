// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaAVFoundation",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaAVFoundation",
            targets: ["ConvivaAVFoundationTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaAVFoundation",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.0/ConvivaAVFoundation/ConvivaAVFoundation.xcframework.zip",
            checksum: "1e0cc2b8ca963cad3335fe20cc0d61303056b25c823671afd20baa6a14707cb6"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.0/ConvivaSDK/ConvivaSDK.xcframework.zip",
            checksum: "2b53aded747578bb7b5cb5832f47590130b59c1a0b65996977380c6988a789f9"),

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
