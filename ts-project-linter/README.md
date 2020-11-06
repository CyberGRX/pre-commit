# ts-project-linter

Pre-commit hook that will run `prettier --write -c` and then `eslint --fix --quiet --format codeframe` on `.ts` and `.tsx` files to detect and fix TS linting errors. It uses the custom configurations from our `@cybergrx/eslint-config` and `@cybergrx/prettier-config` packages.

## Publishing

This image needs access to the CybergGRX internal Nexus package registry to be able to install `@cybergrx/eslint-config` and `@cybergrx/prettier-config`. Therefore the auto-publishing Github action for this repo will not work because the action's env is not internal to our infrastructure. To publish you have to build the image locally and manually publish it to Dockerhub. You will need to ask someone in Devops for `DOCKERHUB_PASSWORD`.

_Steps:_

1. Increment the `ts-project-linter` version number in `./VERSION`.

2. Log in to @cybergrx Docker:

```
echo DOCKERHUB_PASSWORD | docker login -u cybergrxtechops --password-stdin
```

3. Build and publish the image:

```
make docker
```

4. Ensure you have incremented the `ts-project-linter` version number in `../.pre-commit-hooks.yaml`. Then tag a release in Github. The tagged version number will be what you put in the `rev` key in `.pre-commit-config.yaml` (below).

## Usage

Add the following block to your `.pre-commit-config.yaml`.

```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: v1.0.6
    hooks:
      - id: ts-project-linter
```

#-# Docker

Public repo: https://hub.docker.com/r/cybergrx/ts-project-linter
