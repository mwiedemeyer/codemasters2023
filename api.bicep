resource apim 'Microsoft.ApiManagement/service@2022-08-01' existing = {
  name: 'cm23apimdev'
}
resource api 'Microsoft.ApiManagement/service/apis@2022-08-01' = {
  name: 'petstore'
  parent: apim
  properties: {
    path: 'petstore'
    format: 'openapi-link'
    value: 'https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.yaml'
  }
}
