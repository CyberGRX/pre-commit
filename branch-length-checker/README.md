# branch-length-checker
Pre-commit hook that will run and check your branch length.

# usage
Add the following block to your `.pre-commit-config.yaml`
```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: v1.0.0
    hooks:
      - id: branch-length-checker
```

# docker
Public repo: https://hub.docker.com/r/cybergrx/branch-length-checker
