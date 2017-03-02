<!--
 Contributing Instructions.md

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace

 Copyright ©2017 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 -->

# Contributing Instructions

Workspace can manage the project’s contributing instructions.

This is controlled by the [configuration](Configuring Workspace.md) option `Manage Contributing Instructions`. The [default](Responsibilities.md#default-vs-automatic) value is `False`. The [automatic](Responsibilities.md#default-vs-automatic) value is `True`.

Contributing instructions are instructions in a `CONTRIBUTING.md` file that GitHub directs contributors to read.

## Customization

The contributing instructions can be customized by defining a template with the `Contributing Instructions` [configuration](Configuring Workspace.md) option.

The template for contributing instructions works the same as the [template for file headers](File Headers.md#customization).

The available dynamic elements are:

- `Project`: The name of the particular project. (e.g. `MyLibrary`)
- `Administrators`: The value of the configuration option `Administrators`, a list of GitHub usernames separated by line breaks.
- `Development Notes`: The value of the configuration option `Development Notes`, in Markdown.

Customization can be especially useful when it is combined with [configuration sharing](Configuring Workspace.md#sharing-configurations-between-projects).