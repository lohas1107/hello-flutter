clean:
	rm -rf flutter

init: clean
	git clone https://github.com/flutter/flutter.git -b stable
	docker build -t flutter-dev --no-cache infra

develop:
	docker build -t flutter-dev infra
	docker run -it --rm \
		--name flutter-dev \
		-v $(PWD):/hello-flutter \
		flutter-dev bash