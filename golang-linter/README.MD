# golang-linter

Pre-commit hook that will run `go fmt` on `.go` files to detect and fix Golang linting errors.

# usage

Add the following block to your `.pre-commit-config.yaml`

```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: v1.0.0
    hooks:
      - id: golang-linter
```

# docker

Public repo: https://hub.docker.com/r/cybergrx/golang-linter
