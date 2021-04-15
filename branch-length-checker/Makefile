VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/branch-length-checker:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/branch-length-checker:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/branch-length-checker:${VERSION} cybergrx/branch-length-checker:latest

	docker push cybergrx/branch-length-checker:${VERSION}
	docker push cybergrx/branch-length-checker:latest
endif
