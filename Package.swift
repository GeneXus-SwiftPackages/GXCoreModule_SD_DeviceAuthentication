// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_DeviceAuthentication",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_DeviceAuthentication",
			targets: ["GXCoreModule_SD_DeviceAuthenticationWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0")
	],
	targets: [
		.target(name: "GXCoreModule_SD_DeviceAuthenticationWrapper",
				dependencies: [
					"GXCoreModule_SD_DeviceAuthentication",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_DeviceAuthentication",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_DeviceAuthentication-4.2.0.xcframework.zip",
			checksum: "32e1649749e46519739a5f409307bee0ba2920ad486367806ffe7e4ea1d978ef"
		)
	]
)