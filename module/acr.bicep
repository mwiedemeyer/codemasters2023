param suffix string
param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2022-12-01' = {
  name: 'codemasters${suffix}'
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    publicNetworkAccess: 'Enabled'
  }
}
output acrId string = acr.id
