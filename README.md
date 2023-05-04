# Quibiq Codemasters 2023

Demo repository for the Quibiq Codemasters 2023.

## Deployment

Check mit what-if welche Ressourcen erstellt/aktualisiert werden:

```bash
az deployment sub what-if --template-file ./iac/main.bicep --location westeurope
```

Deployment

```bash
az deployment sub create --template-file ./iac/main.bicep --location westeurope
```

Publish in private Container Registry:

```bash
az bicep publish --file ./iac/modules/storage.bicep --target br:codemasters7ii2xg.azurecr.io/modules/storage:1.0
```

## Link Liste

- [Code Repository](https://github.com/mwiedemeyer/codemasters2023)
- [Bicep file structure](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/file)
- [Bicep Roadmap / Project Board](https://github.com/orgs/Azure/projects/115/views/10)
- [Azure Deployment & Governance Youtube channel](https://www.youtube.com/@azuredeploymentsgovernance3067/videos)
- [DevOps Deployment Pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/key-pipelines-concepts?view=azure-devops)