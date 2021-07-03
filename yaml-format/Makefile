VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/yaml-format:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/yaml-format:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/yaml-format:${VERSION} cybergrx/yaml-format:latest

	docker push cybergrx/yaml-format:${VERSION}
	docker push cybergrx/yaml-format:latest
endif
