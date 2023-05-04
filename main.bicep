targetScope = 'subscription'

@allowed([ 'westeurope', 'northeurope' ])
param location string = 'westeurope'

param deployStorage bool = false

param storages array = [
  {
    name: 'storage1'
    location: location
  }
  {
    name: 'storage2'
    location: location
  }
]

var suffix = substring(uniqueString(subscription().id, location), 6)

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-${suffix}'
  location: location
  tags: {
    environment: 'dev'
  }
}

module storage 'br:codemastersbjwbiq2.azurecr.io/modules/storage:1.0' = {
  name: 'storage'
  scope: rg
  params: {
    location: location
    suffix: suffix
  }
}

module acr 'module/acr.bicep' = {
  name: 'acr'
  scope: rg
  params: {
    suffix: suffix
    location: location
  }
}
