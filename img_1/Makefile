container:
	docker rmi img_1 || echo ''
	docker build --tag img_1 .
run:
	docker run --rm -p5000:3000 img_1
