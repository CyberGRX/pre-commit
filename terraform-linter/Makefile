VERSION := $(shell cat VERSION)
HAS_VERSION := $(shell docker pull cybergrx/terraform-linter:${VERSION} > /dev/null 2>&1; echo $$?)

docker:
ifeq ($(shell test $(HAS_VERSION) -gt 0; echo $$?),0)
	docker build --tag=cybergrx/terraform-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/terraform-linter:${VERSION} cybergrx/terraform-linter:latest

	docker push cybergrx/terraform-linter:${VERSION}
	docker push cybergrx/terraform-linter:latest
endif
