// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterJS",
    products: [
        .library(name: "TreeSitterTS", targets: ["TreeSitterTS"]),
        .library(name: "TreeSitterTSX", targets: ["TreeSitterTSX"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterTS",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "typescript/corpus",
                    "typescript/grammar.js",
                    "LICENSE",
                    "typescript/package.json",
                    "README.md",
                    "script",
                    "typescript/src/grammar.json",
                    "typescript/src/node-types.json",
                    "tsx"
                ],
                sources: [
                    "typescript/src/parser.c",
                    "typescript/src/scanner.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift/typescript",
                cSettings: [.headerSearchPath("typescript/src")]),
        .target(name: "TreeSitterTSX",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "tsx/corpus",
                    "tsx/grammar.js",
                    "LICENSE",
                    "tsx/package.json",
                    "README.md",
                    "script",
                    "typescript/src/grammar.json",
                    "typescript/src/node-types.json",
                    "typescript"
                ],
                sources: [
                    "tsx/src/parser.c",
                    "tsx/src/scanner.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift/tsx",
                cSettings: [.headerSearchPath("tsx/src")])
    ]
)
