<!--
 Configuring Workspace.md
 
 This source file is part of the Workspace open source project.
 
 Copyright ©2017 Jeremy David Giesbrecht and the Workspace contributors.
 
 Soli Deo gloria
 
 Licensed under the Apache License, Version 2.0
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 -->

# Configuring Workspace

Workspace can be configured by placing a text file called `.Workspace Configuration.txt` in the project root.

The basic syntax is as follows:

```
Option A: Simple Value

[_Begin Option B_]
Multiline
Value
[_End_]

(Comment)

((
    Multiline
    Comment
    ))
```

An option may be specified more than once, in which case the last instance overrides any previous instances.