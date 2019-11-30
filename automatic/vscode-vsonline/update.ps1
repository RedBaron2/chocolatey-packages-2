Import-Module au
Import-Module ..\..\scripts\vs-marketplace\VS-Marketplace.psd1

$extension = 'vsonline'
$publisher = 'ms-vsonline'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(id=`"vscode`"\sversion=`")([0-9]+\.[0-9]+\.[0-9]+)" = "`${1}$($Latest.VSCodeVersion)"
    }

    ".\tools\chocolateyinstall.ps1" = @{
      "([0-9]+\.[0-9]+\.[0-9]+)" = "$($Latest.Version)"
    }
  }
}

function global:au_GetLatest {
  $extensionInfo = Get-VSMarketplaceExtensionDetails -Extension $extension -Publisher $publisher

  @{
    Version        = $extensionInfo.Version
    VSCodeVersion  = $extensionInfo.VSCodeVersion
  }
}

update -ChecksumFor none -NoCheckUrl -NoReadme
