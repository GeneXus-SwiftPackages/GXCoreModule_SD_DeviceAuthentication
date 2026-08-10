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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "5.0.0-beta.4")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_DeviceAuthentication-5.0.0-beta.4.xcframework.zip",
			checksum: "a3a9f9d990fb51479b0366ec205edb683bbc92d4f26acd7af050b4dbc909009e"
		)
	]
)