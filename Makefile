all:
	docker build -t symm/youtube-dl .

download-video:
	docker run \
		--rm \
		-v $(PWD)/downloads:/downloads \
		symm/youtube-dl \
		https://www.youtube.com/watch?v=64Qq31ucGy0

extract-audio:
	docker run \
		--rm \
		-v $(PWD)/downloads:/downloads \
		symm/youtube-dl \
		-x \
		--audio-format mp3 \
		https://www.youtube.com/watch?v=64Qq31ucGy0
