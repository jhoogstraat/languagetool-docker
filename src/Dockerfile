FROM adoptopenjdk/openjdk11:alpine-jre

WORKDIR /LanguageTool

RUN addgroup -S languagetool && adduser -S languagetool -G languagetool -h /LanguageTool

RUN apk update \
    && apk add \
    bash \
    libstdc++

USER languagetool

COPY --chown=languagetool start.sh start.sh

ARG CACHE_BREAKER=unknown

RUN wget https://internal1.languagetool.org/snapshots/LanguageTool-latest-snapshot.zip && \
    unzip LanguageTool-latest-snapshot.zip && \
    mv LanguageTool-*/* . && \
    rm LanguageTool-latest-snapshot.zip && \
    rm -r LanguageTool-*/

CMD [ "bash", "start.sh" ]

EXPOSE 8010
