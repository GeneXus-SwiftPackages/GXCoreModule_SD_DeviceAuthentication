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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.35")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_DeviceAuthentication-3.2.0-beta.35.xcframework.zip",
			checksum: "9ead2f9bc026235ac27c196a686b6e1e6f9f941347cc5a4b440f6a63e395eec4"
		)
	]
)