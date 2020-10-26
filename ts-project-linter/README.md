# ts-project-linter

Pre-commit hook that will run `eslint --fix --quiet --format codeframe` on `.ts` and `.tsx` files to detect and fix TS linting errors. It uses the custom configuration from `.eslintrc.js`.

# usage

Add the following block to your `.pre-commit-config.yaml`

```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: v1.0.3
    hooks:
      - id: ts-project-linter
```

# docker

Public repo: https://hub.docker.com/r/cybergrx/ts-project-linter
