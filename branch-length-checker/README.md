# branch-length-checker
Pre-commit hook that will run `cypher-lint` on `.cypher|.cql|.cpy` files.  See https://github.com/cleishm/libcypher-parser for cypher-lint docs and FAQ.

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
