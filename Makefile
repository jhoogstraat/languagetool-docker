.PHONY: build, run, logs

build:
	docker build --build-arg CACHE_BREAKER=$(shell date +%s) -t jh/languagetool-latest src/.

run:
	docker run --rm -d -p 8081:8010 --name langtool -e langtool_languageModel=/ngrams -v ./ngrams:/ngrams:Z jh/languagetool-latest

logs:
	docker logs -f langtool