# Home Assistant Add-on: Grafana Cloud

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]

Easily export Home Assistant stats to Grafana Cloud.

## About

This addon makes it easy to export Home Assistant metrics and logs to [Grafana Cloud][grafana-cloud]

It will gather stats from your Home Assistant install using the [Grafana Agent][grafana-agent] and export them to Grafana Cloud where you can build beautiful custom dashboards.

## Setup

This addon requires the [Prometheus integration](https://www.home-assistant.io/integrations/prometheus/) be enabled so that Home Assistant will expose stats.

To start a minimal configuration, just add the following line to your `configuration.yaml` file and restart Home Assistant.

```
prometheus:
```

If you would like to define the specific stats you would like to expose, you can follow the instructions in the Prometheus [integration docs](https://www.home-assistant.io/integrations/prometheus/).

To configure the Grafana Cloud addon, first create a [Grafana Cloud][grafana-cloud] account and set up your stack.

Copy the stack name, and paste it into the stack name field in the addon configuration.

Next you need to create a new Access Policy:

- Display Name: Home Assistant
- Name: home-assistant
- Realms: <your stack>
- Scopes:
  - Metrics: write
  - Logs: write
  - Stacks: read

![Create Access Policy](https://github.com/grafana/home-assistant-addons/raw/main/grafana_cloud/images/create-access-policy.png)

Finally, add a token to the policy.

Copy the token, and paste it into the token field in the addon configuration.

![Create Access Token](https://github.com/grafana/home-assistant-addons/raw/main/grafana_cloud/images/create-access-token.png)

After saving the configuration, start the addon and it will begin exporting logs and metrics to Grafana Cloud.

[grafana]: https://grafana.com
[grafana-cloud]: https://grafana.com/products/cloud/
[grafana-agent]: https://grafana.com/docs/agent/latest/
[integration]: https://grafana.com/solutions/home-assistant/monitor/
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
