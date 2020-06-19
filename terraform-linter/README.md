# terraform-linter
Pre-commit hook that will run `terraform fmt -write=true` on .tf|.tfvars files.

# usage
Add the following block to your `.pre-commit-config.yaml`
```
  - repo: https://github.com/CyberGRX/pre-commit
    rev: v1.0.0
    hooks:
      - id: terraform-linter
```

# docker
Public repo: https://hub.docker.com/r/cybergrx/terraform-linter
