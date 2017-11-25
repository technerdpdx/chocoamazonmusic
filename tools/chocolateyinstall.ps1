$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20171122/024845907c/AmazonMusicInstaller.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Amazon Music*'

  checksum      = '0EF875189F0CD1363CD7A4E9B774F57DD4BE7A722DD65B5BB4A1BF3D511C5EAF'
  checksumType  = 'sha256'

  silentArgs   = '--unattendedmodeui none'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








