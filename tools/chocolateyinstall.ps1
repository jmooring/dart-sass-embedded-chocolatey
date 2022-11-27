$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/sass/dart-sass-embedded/releases/download/1.56.1/sass_embedded-1.56.1-windows-ia32.zip'
$url64      = 'https://github.com/sass/dart-sass-embedded/releases/download/1.56.1/sass_embedded-1.56.1-windows-x64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'dart-sass-embedded*'

  checksum      = '35910C75A091DA52E72D251438BA88142126ADEEBFE35AC64B617A24505083DA'
  checksumType  = 'sha256'
  checksum64    = 'C8BF9C009AFD6BBEB1742E010845B84E1021FDBA6EDC80B4DD1FBBEE75354B39'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
New-Item `
  -Path "$toolsDir\sass_embedded\src\dart.exe.ignore" `
  -Type "file"
Install-BinFile `
  -Name "dart-sass-embedded" `
  -Path "..\lib\dart-sass-embedded\tools\sass_embedded\dart-sass-embedded.bat"
