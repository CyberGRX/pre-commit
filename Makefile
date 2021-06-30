cypher-linter: force
	$(MAKE) -C cypher-linter docker

graphql-linter: force
	$(MAKE) -C graphql-linter docker

terraform-linter: force
	$(MAKE) -C terraform-linter docker

golang-linter: force
	$(MAKE) -C golang-linter docker

branch-length-checker: force
	$(MAKE) -C branch-length-checker docker

kustomize-validator: force
	$(MAKE) -C kustomize-validator docker

force:
