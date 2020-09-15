IMAGE=maxfalaleev1/samba

.PHONY: build
build:
	docker build -t $(IMAGE):latest -f Dockerfile .

.PHONY: push
push: build
	docker push $(IMAGE)
