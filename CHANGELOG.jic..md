======================================================================================================================
# Using **cider** command-line utility to populate this file, and bump the pubspec.yaml version.

```agsl
cider log <type> <description>
```
**type** is one of:

- **added**,
- **changed**,
- **deprecated**,
- **removed**,
- **fixed**,
- **security**

**description** is a markdown text line

======================================================================================================================
# About standard git commit messages

[Conventional Commits](https://keepachangelog.com/en/1.0.0/) defines the format as follows:

```agsl
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

- **type** prefix options:

    - **feat**: Introduces a new feature
    - **fix**: Fixes a bug
    - **docs**: Updates documentation
    - **style**: Makes code style changes (not functional changes)
    - **refactor**: Refactors existing code without changing functionality
    - **test**: Adds or updates tests
    - **chore**: Includes other project maintenance tasks not covered above

- Scope (Optional): After the type, you can optionally add a scope in parentheses to specify the area of the codebase affected by the change. (e.g., fix(auth): handle invalid tokens)

- Description: This is a short, concise summary of the change, typically under 50 characters. It should clearly explain what the commit does.

- Body (Optional): A longer description can be provided after the first line for additional details, explanations, or breaking changes.

- Footer (Optional): You can include footers with additional information like issue tracker references (e.g., Fixes #123).

======================================================================================================================

# Changelog
All notable changes to this project will be documented in this file.
NOw is the time for all blah.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## \[0.0.4\] - 2024-05-07
### added
- moved ColorValues class and DecorationShapeEnum from flutter\_callouts pkg

## \[0.0.3\] - 2024-05-07
### added
- still trying markdown capabilities on pub.dev

## \[0.0.2\] - 2024-05-07
### added
- trying markdown capabilities on pub.dev

## \[0.0.1\] - 2024-05-07
### added
- Initial release

## \[0.2.1\] - 2024-07-06
## [0.2.1] - 2024-07-06
## [0.0.4] - 2024-07-06
### Added
- cider
- cider
- cider info at top of file
- cider info at top of file XXXXXXXXX
- zzz zzz zzz
- aaaaa
- aaaaa   bbbbbb
- ccccccccccc
- hello

### Fixed
- spank

### Removed
- monkey

### Security
- make
- make
- make more secure

[0.2.1]: https://github.com/example/project/compare/0.0.4...0.2.1
[0.0.4]: https://github.com/example/project/releases/tag/0.0.4
