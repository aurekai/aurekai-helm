# Quickstart — aurekai-helm

Helm chart for deploying the Aurekai pipeline on Kubernetes.

## Requirements

- Kubernetes cluster
- Helm >= 3.12.0

## Install

```bash
helm install aurekai ./charts/aurekai
```

## Upgrade

```bash
helm upgrade aurekai ./charts/aurekai --set aurekai.version=0.8.0-alpha.4
```

## Validate

```bash
bash tests/validate-schemas.sh
bash tests/validate-scripts.sh
```
