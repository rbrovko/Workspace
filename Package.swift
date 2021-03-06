// swift-tools-version:3.1

/*
 Package.swift

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2017 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import PackageDescription

let package = Package(
    name: "Workspace",
    targets: [
        Target(name: "workspace", dependencies: ["WorkspaceLibrary"]),
        Target(name: "WorkspaceLibrary"),
        Target(name: "WorkspaceTests", dependencies: ["WorkspaceLibrary"])
    ],
    dependencies: [
        .Package(url: "https://github.com/SDGGiesbrecht/SDGCornerstone", versions: Version(0, 1, 1) ..< Version(0, 2, 0))
    ]
)
