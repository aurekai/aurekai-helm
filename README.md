<p align="center">
  <img src="https://raw.githubusercontent.com/aurekai/aurekai/main/assets/aurekai-logo.svg" alt="Aurekai" width="520" />
</p>

# `aurekai-helm` · v0.8.0-alpha.5

Official Helm chart for Aurekai — CRDs for all Akai resource types, lifecycle hooks, and operator deployment.

## CRDs

| CRD | Kind | Short | Description |
|---|---|---|---|
| `akaipipelineruns.aurekai.io` | `AkaiPipelineRun` | `apr` | Run any Akai operator as a K8s resource |
| `akaiproofs.aurekai.io` | `AkaiProof` | `apf` | Cryptographic proof record |
| `akaimodelmemories.aurekai.io` | `AkaiModelMemory` | `amm` | FPQ+SAE model memory build pipeline |
| `akaireleasegates.aurekai.io` | `AkaiReleaseGate` | `arg` | Release gate evaluation resource |

## Helm Hooks

| Hook | Phase | Purpose |
|---|---|---|
| `pre-install-doctor` | pre-install, pre-upgrade | Run `akai doctor --deep` before deployment |
| `post-install-proof` | post-install, post-upgrade | Verify manifest + export proof bundle after deployment |

## Install

```bash
helm install aurekai ./charts/aurekai \
  --set akai.image=ghcr.io/aurekai/akai:0.8.0-alpha.5 \
  --namespace aurekai --create-namespace
```

## Example AkaiPipelineRun

```yaml
apiVersion: aurekai.io/v1alpha1
kind: AkaiPipelineRun
metadata:
  name: brief-run-001
spec:
  operator: "brief generate"
  args: ["--artifact", "art-abc123"]
  proofRequired: true
  timeout: 300
```


Aurekai integration surface for Helm.

Status: active
Type: infra

## Core Template Set

- doctor-deep
- manifest-verify
- model-memory-pack
- sae-audit
- semantic-cache-bench
- proof-bundle-export
- release-gate

## Canonical References

- Platform: https://github.com/aurekai/aurekai
- Native runtime: https://github.com/aurekai/native-runtime
- Integration registry: https://github.com/aurekai/aurekai/blob/main/registry/integrations.json
- Ecosystem map: https://github.com/aurekai/aurekai/blob/main/ECOSYSTEM_NAMES.md
