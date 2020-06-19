# graphql-linter
Pre-commit hook that will run `prettier -c --write` on `.graphql` files to detect and fix GraphQL linting errors.

# usage
Add the following block to your `.pre-commit-config.yaml`
```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: master
    hooks:
      - id: graphql-linter
```

# docker
Public repo: https://hub.docker.com/r/cybergrx/graphql-linter
