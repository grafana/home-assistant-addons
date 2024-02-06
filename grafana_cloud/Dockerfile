ARG BUILD_FROM
FROM $BUILD_FROM

ARG AGENT_VERSION BUILD_ARCH
RUN apk --update add libc6-compat && rm -rf /var/cache/apk/*

RUN cd /tmp && \
    curl -sSLf -o agent.zip "https://github.com/grafana/agent/releases/download/${AGENT_VERSION}/grafana-agent-linux-${BUILD_ARCH//aarch64/arm64}.zip" && \
    unzip agent.zip && mv grafana-agent-* /usr/bin/grafana-agent && \
    rm agent.zip

# Copy data for add-on
COPY run.sh config.river /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
