FROM alpine:3.19

RUN apk add --no-cache bash

WORKDIR /app

COPY script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["/bin/bash", "script.sh"]