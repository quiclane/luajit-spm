// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "luajit-spm",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "LuaJIT",
            targets: ["LuaJIT"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "LuaJIT",
            path: "luajit.xcframework"
        )
    ]
)
