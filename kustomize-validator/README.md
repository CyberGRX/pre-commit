# kustomize-validator

Pre-commit hook that will run `kustomize build .` when a staged file is adjacent to a kustomization.yaml.

## Publishing

_Steps:_

1. Increment the `kustomize-validator` version number in `./VERSION`.

2. Log in to @cybergrx Docker:

```
echo DOCKERHUB_PASSWORD | docker login -u cybergrxtechops --password-stdin
```

3. Build and publish the image:

```
make docker
```

4. Ensure you have incremented the `kustomize-validator` version number in `../.pre-commit-hooks.yaml`. Then tag a release in Github. The tagged version number will be what you put in the `rev` key in `.pre-commit-config.yaml` (below).

## Usage

Add the following block to your `.pre-commit-config.yaml`.

```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: v1.0.0
    hooks:
      - id: kustomize-validator
```

#-# Docker

Public repo: https://hub.docker.com/r/cybergrx/kustomize-validator
