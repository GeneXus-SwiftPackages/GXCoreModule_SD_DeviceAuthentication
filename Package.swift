// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_DeviceAuthentication",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_DeviceAuthentication",
			targets: ["GXCoreModule_SD_DeviceAuthenticationWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.4.0-rc.5")
	],
	targets: [
		.target(name: "GXCoreModule_SD_DeviceAuthenticationWrapper",
				dependencies: [
					"GXCoreModule_SD_DeviceAuthentication",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_DeviceAuthentication",
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_SD_DeviceAuthentication-1.4.0-rc.5.xcframework.zip",
			checksum: "dc831723b3d8971b6cfbec76650dbcd2f9269283c8e0273b346c9cc0a78600d2"
		)
	]
)