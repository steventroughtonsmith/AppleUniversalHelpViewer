// swift-tools-version: 5.7

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "AppleUniversalHelpViewer",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .iOSApplication(
            name: "AppleUniversalHelpViewer",
            targets: ["AppleUniversalHelpViewer"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .magicWand),
            accentColor: .presetColor(.purple),
            supportedDeviceFamilies: [
                .pad,
                .phone,
                .mac
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .outgoingNetworkConnections()
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/steventroughtonsmith/AppleUniversalCore.git", .branch("main")),
		.package(url: "https://github.com/steventroughtonsmith/AppleUniversalHelp.git", .branch("main"))
    ],
    targets: [
        .executableTarget(
            name: "AppleUniversalHelpViewer",
            dependencies: [
                "AppleUniversalHelp"
            ],
            path: "Sources/AppleUniversalHelpViewer",
			resources: [
				.copy("Resources/Help.help"),
				.copy("Resources/styles.css"),
				.process("Resources/Localizable.strings")
			]
        )
    ]
)