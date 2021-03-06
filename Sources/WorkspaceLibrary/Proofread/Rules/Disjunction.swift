/*
 Disjunction.swift

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2017 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import SDGCornerstone

struct Disjunction : Rule {

    static let name = "Disjunction"

    static func check(file: File, status: inout Bool) {

        if let fileType = file.fileType {

            var message = "Use “∨” instead."
            if fileType == .swift {
                message += " (Import SDGCornerstone.)"
            }

            var index = file.contents.startIndex
            while let range = file.contents.range(of: "\u{7C}|", in: index ..< file.contents.endIndex) {
                index = range.upperBound

                func throwError() {
                    errorNotice(status: &status, file: file, range: range, replacement: "∨", message: message)
                }

                switch fileType {
                case .workspaceConfiguration, .json, .gitignore, .shell, .html, .css, .javaScript:
                    throwError()

                case .yaml:
                    if ¬file.contents.substring(from: range.upperBound).hasPrefix(" brew") {
                        throwError()
                    }

                case .swift, .swiftPackageManifest:
                    if ¬isInAliasDefinition(for: "∨", at: range, in: file)
                        ∧ ¬isInConditionalCompilationStatement(at: range, in: file) {
                        throwError()
                    }

                case .markdown:
                    if ¬isInConditionalCompilationStatement(at: range, in: file) {
                        throwError()
                    }
                }
            }
        }
    }
}
