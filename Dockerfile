FROM buildkite/agent

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates curl groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

COPY ./config /root/.aws/config
COPY ./credentials /root/.aws/credentials
