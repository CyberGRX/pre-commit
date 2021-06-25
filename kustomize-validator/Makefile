VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/kustomize-validator:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/kustomize-validator:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/kustomize-validator:${VERSION} cybergrx/kustomize-validator:latest

	docker push cybergrx/kustomize-validator:${VERSION}
	docker push cybergrx/kustomize-validator:latest
endif
