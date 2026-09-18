FROM ghcr.io/home-assistant/base-debian:trixie@sha256:01e153da2c2579f2cf5010901da7bc31b1dd035921ea46ccaff22e521efa74a7

ARG ALLOY_VERSION="v1.19.2"
ARG BUILD_ARCH

# loki.source.journal dlopens libsystemd.so.0 at runtime.
RUN apt-get update && \
    apt-get install -y --no-install-recommends libsystemd0 unzip && \
    rm -rf /var/lib/apt/lists/*

RUN cd /tmp && \
    curl -sSLf -o alloy.zip "https://github.com/grafana/alloy/releases/download/${ALLOY_VERSION}/alloy-linux-${BUILD_ARCH//aarch64/arm64}.zip" && \
    unzip alloy.zip && mv alloy-linux-* /usr/bin/grafana-alloy && chmod +x /usr/bin/grafana-alloy && \
    rm alloy.zip

COPY rootfs /

LABEL \
    org.opencontainers.image.title="Home Assistant Add-on: Grafana Cloud" \
    org.opencontainers.image.description="Grafana Cloud Addon." \
    org.opencontainers.image.source="https://github.com/grafana/home-assistant-addons" \
    org.opencontainers.image.licenses="Apache License 2.0" \
    org.opencontainers.image.vendor="Grafana Labs"
