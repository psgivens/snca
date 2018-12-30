#!/usr/bin/pwsh

# https://docs.microsoft.com/en-us/azure/storage/common/storage-powershell-guide-full

# This will be an interactive step that requires the user to 
# open a browser and log in. 
Connect-AzureRmAccount

# Which storage accounts do we have?
Get-AzureRMStorageAccount | Select StorageAccountName, Location

$resourceGroup = "stoneviewnaturecenter"
$storageAccountName = "stoneviewnaturecenter"

$storageAccount = Get-AzureRmStorageAccount `
  -ResourceGroupName $resourceGroup `
  -Name $storageAccountName 


# These are not working. Should upload through the explorer.
EXIT

Start-AzureStorageBlobCopy -SrcDir "web" -DestContainer '$web'

Start-AzureStorageBlobCopy -SrcContainer "web" -DestContainer '$web'

Set-AzureStorageBlobContent -File "web/*" -Container '$web'


