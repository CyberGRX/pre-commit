VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/graphql-linter:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/graphql-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/graphql-linter:${VERSION} cybergrx/graphql-linter:latest

	docker push cybergrx/graphql-linter:${VERSION}
	docker push cybergrx/graphql-linter:latest
endif
