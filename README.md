# pre-commit
Implementations for a number of pre-commit hooks that were elusive in the wild.  Most of these hooks are going to be implemented using docker_images to ensure good environmental isolation.

# developing
1. Make sure you `pre-commit install && pre-commit install --install-hooks && pre-commit install --hook-type pre-push`
1. Create your hook in a new sub folder
1. Add your hook with a unique ID into `.pre-commit-hooks.yaml`

# Hooks
Each hook is listed by its ID, documentation is available in the implementation folder
- [cypher-linter](./cypher-linter/README.md)
- [graphql-linter](./graphql-linter/README.md)
- [terraform-linter](./terraform-linter/README.md)
