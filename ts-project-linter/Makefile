VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/ts-project-linter:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/ts-project-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/ts-project-linter:${VERSION} cybergrx/ts-project-linter:latest

	docker push cybergrx/ts-project-linter:${VERSION}
	docker push cybergrx/ts-project-linter:latest
endif
