$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/sass/dart-sass-embedded/releases/download/1.58.3/sass_embedded-1.58.3-windows-ia32.zip'
$url64      = 'https://github.com/sass/dart-sass-embedded/releases/download/1.58.3/sass_embedded-1.58.3-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'dart-sass-embedded*'

  checksum      = '922CE0B17970A88A9A993047CE3CB9E3B82DD50558D4ADD62D1033E149263D93'
  checksumType  = 'sha256'
  checksum64    = '5D34BAEA134D8693E27E2E98E098D48706B345A5F7FB145A97F06A3493B2AD79'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
New-Item `
  -Path "$toolsDir\sass_embedded\src\dart.exe.ignore" `
  -Type "file"
Install-BinFile `
  -Name "dart-sass-embedded" `
  -Path "..\lib\dart-sass-embedded\tools\sass_embedded\dart-sass-embedded.bat"
