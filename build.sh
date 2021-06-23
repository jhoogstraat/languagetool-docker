docker rmi jh/languagetool-latest
docker build --build-arg CACHE_BREAKER=$(date +%s) -t jh/languagetool-latest src/.
