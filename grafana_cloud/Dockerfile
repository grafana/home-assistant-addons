FROM ghcr.io/home-assistant/base:3.24

ARG ALLOY_VERSION="v1.19.2"
ARG BUILD_ARCH
RUN apk --update add libc6-compat && rm -rf /var/cache/apk/*

RUN cd /tmp && \
    curl -sSLf -o alloy.zip "https://github.com/grafana/alloy/releases/download/${ALLOY_VERSION}/alloy-linux-${BUILD_ARCH//aarch64/arm64}.zip" && \
    unzip alloy.zip && mv alloy-linux-* /usr/bin/grafana-alloy && \
    rm alloy.zip

COPY rootfs /

LABEL \
    org.opencontainers.image.title="Home Assistant Add-on: Grafana Cloud" \
    org.opencontainers.image.description="Grafana Cloud Addon." \
    org.opencontainers.image.source="https://github.com/grafana/home-assistant-addons" \
    org.opencontainers.image.licenses="Apache License 2.0" \
    org.opencontainers.image.vendor="Grafana Labs"
