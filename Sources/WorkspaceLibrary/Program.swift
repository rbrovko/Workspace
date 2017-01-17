// Program.swift
//
// This source file is part of the Workspace open source project.
//
// Copyright ©2017 Jeremy David Giesbrecht and the Workspace contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

public func run() {
    
    print("") // Line break after the input line.
    
    Command.current.run(andExit: true)
    
    unreachableLocation()
}
