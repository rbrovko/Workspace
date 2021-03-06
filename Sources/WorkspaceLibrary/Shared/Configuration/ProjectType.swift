/*
 ProjectType.swift

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2017 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

enum ProjectType : String, CustomStringConvertible {

    // MARK: - Initialization

    init?(key: String) {
        self.init(rawValue: key)
    }

    init?(flag: String) {
        switch flag {
        case "library":
            self = .library
        case "application":
            self = .application
        case "executable":
            self = .executable
        default:
            return nil
        }
    }

    // MARK: - Cases

    case library = "Library"
    case executable = "Executable"
    case application = "Application"

    static let all: [ProjectType] = [
        .library,
        .executable,
        .application
    ]

    // MARK: - Properties

    var key: String {
        return rawValue
    }

    // MARK: - CustomStringConvertible

    var description: String {
        return key
    }
}
