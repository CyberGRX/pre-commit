VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/cypher-linter:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/cypher-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/cypher-linter:${VERSION} cybergrx/cypher-linter:latest

	docker push cybergrx/cypher-linter:${VERSION}
	docker push cybergrx/cypher-linter:latest
endif
