param location string
param suffix string

resource st 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'st${suffix}'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: true
  }
}
