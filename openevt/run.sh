#!/usr/bin/with-contenv bashio

# Export configured environment variables for the container
export OPENEVT_ADDR="$(bashio::config 'address')"
export OPENEVT_SERIALNUMBER="$(bashio::config 'serial_number')"
export OPENEVT_WEBLISTENADDRESS="$(bashio::config 'web_listen_address')"
export OPENEVT_WEBTELEMETRYPATH="$(bashio::config 'telemetry_path')"
export OPENEVT_WEBDISABLEEXPORTERMETRICS="$(bashio::config 'disable_exporter_metrics' false)"
export OPENEVT_POLLINTERVAL="$(bashio::config 'poll_interval')"
export OPENEVT_RECONNECTINTERVAL="$(bashio::config 'reconnect_interval')"
export OPENEVT_LOGLEVEL="$(bashio::config 'log_level')"

echo "Starting OpenEVT with address: $OPENEVT_ADDR serial: $OPENEVT_SERIALNUMBER log_level: $OPENEVT_LOGLEVEL"

exec /usr/bin/openevt 
