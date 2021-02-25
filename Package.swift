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
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.2/ConvivaAVFoundation/ConvivaAVFoundation.xcframework.zip",
            checksum: "626d84a5b47edcd5e1c66085b90fa92965740f6b92661f18066bd32b07f2ab1d"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.2/ConvivaSDK/ConvivaSDK.xcframework.zip",
            checksum: "0a16317f808b7c0735c30a5e2ad33317352755a5a37dbbd3602501406de1ed5d"),

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
