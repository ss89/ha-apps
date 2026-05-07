# OpenEVT

This app scrapes data from compatible Envertech inverters and provides the data for home assistant users (and as prometheus metrics as well).

There are multiple ways to integrate into home assistant:
* [using home assistants rest integration](https://github.com/brandon1024/OpenEVT?tab=readme-ov-file#prometheus--home-assistant-integrations) (requires configuration.yaml adjustments)
* [using my HACS integration](https://github.com/ss89/ha-envertech-integration)

## Configuration

Set the following options in the UI when installing the app:

* **address**: Address including port for the Envertech inverter
* **serial_number**: Serial number for the Envertech inverter
* **web_listen_address**: Address on which to expose metrics (default: `:9090`)
* **telemetry_path**: Path under which to expose metrics (default: `/metrics`)
* **disable_exporter_metrics**: Exclude go_* runtime metrics (default: `false`)
* **poll_interval**: Poll interval duration, e.g. `10s` (default: `5s`)
* **reconnect_interval**: Reconnect interval when connection is lost, e.g. `1m` (default: `1m`)
* **log_level**: Log level: `DEBUG`, `INFO`, `WARN`, `ERROR` (default: `INFO`)
