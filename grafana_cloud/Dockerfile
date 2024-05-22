ARG BUILD_FROM
FROM $BUILD_FROM

ARG ALLOY_VERSION BUILD_ARCH
RUN apk --update add libc6-compat && rm -rf /var/cache/apk/*

RUN cd /tmp && \
    curl -sSLf -o alloy.zip "https://github.com/grafana/alloy/releases/download/${ALLOY_VERSION}/grafana-alloy-linux-${BUILD_ARCH//aarch64/arm64}.zip" && \
    unzip alloy.zip && mv alloy-linux-* /usr/bin/grafana-alloy && \
    rm alloy.zip

# Copy files for addon
COPY rootfs /
