.PHONY: all favicon run-static

all:
	echo "Hello, World!"

favicon:
	mkdir -p favicon && magick images/Nicewrk-white-logo.png -resize 32x32 favicon/favicon-32.png && magick favicon/favicon-32.png favicon/favicon.ico

run-static:
	echo "Running static server at http://localhost:3001"
	python3 -m http.server 3001
