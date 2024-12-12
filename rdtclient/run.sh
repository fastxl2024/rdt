#!/usr/bin/with-contenv bashio

# Configure environment variables
PUID=$(bashio::config 'PUID')
PGID=$(bashio::config 'PGID')
TZ=$(bashio::config 'TZ')
DATA_PATH=$(bashio::config 'data_path')
DOWNLOADS_PATH=$(bashio::config 'downloads_path')

export PUID PGID TZ

# Ensure directories exist
mkdir -p "$DATA_PATH" "$DOWNLOADS_PATH"

# Main process: Leave management to S6-overlay
exec /usr/bin/rdtclient
