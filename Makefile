TAG = $(shell git log -1 --pretty=format:"%H")

build:
	docker build -t gcr.io/michael-burt/sachet:${TAG} .
	docker push gcr.io/michael-burt/sachet:${TAG}
