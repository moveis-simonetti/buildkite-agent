FROM buildkite/agent:latest

ENV AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}

RUN apk --no-cache update && \
    apk --no-cache add aws-cli ca-certificates curl groff less coreutils && \
    rm -rf /var/cache/apk/*
