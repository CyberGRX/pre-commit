# cypher-linter
Pre-commit hook that will run `cypher-lint` on `.cypher|.cql|.cpy` files.  See https://github.com/cleishm/libcypher-parser for cypher-lint docs and FAQ.

# usage
Add the following block to your `.pre-commit-config.yaml`
```
  - repo: https://github.com/CyberGRX/cypher-linter
    rev: master
    hooks:
      - id: cypher-linter
```

# docker
Public repo: https://hub.docker.com/r/cybergrx/cypher-linter
