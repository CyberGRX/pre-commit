VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/golang-linter:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/golang-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/golang-linter:${VERSION} cybergrx/golang-linter:latest

	docker push cybergrx/golang-linter:${VERSION}
	docker push cybergrx/golang-linter:latest
endif
