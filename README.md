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
