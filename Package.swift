// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftui-markdown",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "MarkdownText",
            targets: ["MarkdownText"]
        ),
    ],
    dependencies: [
		.package(url: "git@github.com:ivalx1s/swift-markdown.git", .upToNextMinor(from: .init(0, 0, 221109))),
    ],
    targets: [
        .target(
            name: "MarkdownText",
            dependencies: [
                .product(name: "Markdown", package: "swift-markdown"),
            ]
        ),
    ]
)

