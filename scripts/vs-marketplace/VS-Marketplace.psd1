@{
  ModuleVersion     = '0.1.0'
  GUID              = 'd93bf25a-7790-428d-8712-b9d68be44d91'
  Author            = 'dgalbraith'
  Description       = 'PowerShell functions to assist interactions with the Visual Studio Marketplace'
  NestedModules     = @(
    '.\functions\Get-VSMarketplaceExtension.ps1',
    '.\functions\Get-VSMarketplaceExtensionDetails.ps1',
    '.\functions\Get-VSMarketplaceExtensionDownloadUrl.ps1',
    '.\functions\Get-VSMarketplaceExtensionName.ps1',
    '.\functions\Get-VSMarketplaceExtensionPageUrl.ps1'
  )
  FunctionsToExport = @(
    'Get-VSMarketplaceExtension',
    'Get-VSMarketplaceExtensionDetails',
    'Get-VSMarketplaceExtensionDownloadUrl',
    'Get-VSMarketplaceExtensionName',
    'Get-VSMarketplaceExtensionPageUrl'
  )
}
