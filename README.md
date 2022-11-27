# Chocolatey package for Embedded Dart Sass

Embedded Dart Sass is a wrapper for Dart Sass that implements the compiler side of the [Embedded Sass protocol]. It's designed to be embedded in a host language, which then exposes an API for users to invoke Sass and define custom functions and importers.

Project: <https://github.com/sass/dart-sass-embedded>

## Install, upgrade, and remove

You must run Chocolatey commands from Windows Powershell as Administrator.

```text
choco install dart-sass-embedded
choco upgrade dart-sass-embedded
choco uninstall dart-sass-embedded
```

## Usage

Start the compiler and listen on stdin

```text
dart-sass-embedded
```

Display version

```text
dart-sass-embedded --version
```




[Embedded Sass protocol]: https://github.com/sass/sass-embedded-protocol/blob/master/README.md#readme
