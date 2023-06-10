$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/sass/dart-sass-embedded/releases/download/1.62.1/sass_embedded-1.62.1-windows-ia32.zip'
$url64      = 'https://github.com/sass/dart-sass-embedded/releases/download/1.62.1/sass_embedded-1.62.1-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'dart-sass-embedded*'

  checksum      = 'D8DC496B35C52ADD61057598DFBAC87F2ECA5162F654AAC558000F63AF94119F'
  checksumType  = 'sha256'
  checksum64    = '97336AFE04E7B5AD38A3DBB6B5A9EA01D0E8652C3889BF7FDF67D1D635511FEB'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
New-Item `
  -Path "$toolsDir\sass_embedded\src\dart.exe.ignore" `
  -Type "file"
Install-BinFile `
  -Name "dart-sass-embedded" `
  -Path "..\lib\dart-sass-embedded\tools\sass_embedded\dart-sass-embedded.bat"
