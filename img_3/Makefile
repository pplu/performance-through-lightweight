container:
	docker rmi img_3 || echo ''
	docker build --tag img_3 .
run:
	docker run --rm -p5000:3000 img_3
