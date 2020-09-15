IMAGE=registry.gitlab.com/falaleev/home-cloud/samba

.PHONY: build
build:
	docker build -t $(IMAGE):latest -f Dockerfile .

.PHONY: push
push: build
	docker push $(IMAGE)
