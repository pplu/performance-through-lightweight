container:
	docker rmi img_2 || echo ''
	docker build --tag img_2 .
run:
	docker run --rm -p5000:3000 img_2
