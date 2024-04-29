> [!Note]
> The Dart Sass team discontinued Embedded Dart Sass, with v1.62.1 as the final release. Dart Sass v1.63.0 and later include the embedded compiler, accessible by running `sass --embedded`.

---

# Chocolatey package for Embedded Dart Sass

Embedded Dart Sass is a wrapper for [Dart Sass] that implements the compiler side of the [Embedded Sass protocol]. It's designed to be embedded in a host language, which then exposes an API for users to invoke Sass and define custom functions and importers.

Project: <https://github.com/sass/dart-sass-embedded>

Package: <https://community.chocolatey.org/packages/dart-sass-embedded>

## Install, upgrade, and uninstall

You must run Chocolatey commands from Windows Powershell as Administrator.

```text
choco install dart-sass-embedded
choco upgrade dart-sass-embedded
choco uninstall dart-sass-embedded
```

Reference: [Chocolatey commands]

## Usage

Start the compiler and listen on stdin

```text
dart-sass-embedded
```

Display version

```text
dart-sass-embedded --version
```

[Dart Sass]: https://sass-lang.com/dart-sass
[Embedded Sass protocol]: https://github.com/sass/sass-embedded-protocol/blob/master/README.md#readme

[Chocolatey commands]: https://docs.chocolatey.org/en-us/choco/commands/
