IMAGE_NAME = jacoelho/crane-image
VERSION = 0.1
BUILD_CMD = docker build --no-cache --rm=true -t

.PHONY: build tag_latest push

all: build

build:
	$(BUILD_CMD) $(IMAGE_NAME):$(VERSION) .

tag_latest:
	docker tag -f $(IMAGE_NAME):$(VERSION) $(IMAGE_NAME):latest

push: tag_latest
	docker push $(IMAGE_NAME):$(VERSION)
	docker push $(IMAGE_NAME):latest

