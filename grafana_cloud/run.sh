#!/usr/bin/with-contenv bashio

export STACK_NAME=$(bashio::config 'stack_name')
export ACCESS_TOKEN=$(bashio::config 'access_token')
export INSTANCE_NAME=$(bashio::config 'instance_name')
export LOG_LEVEL=$(bashio::config 'log_level')
export SCRAPE_INTERVAL=$(bashio::config 'scrape_interval')
export AGENT_MODE=flow

exec /usr/bin/grafana-agent run --server.http.listen-addr=0.0.0.0:80 --storage.path=/config /config.river
