#!/usr/bin/with-contenv bashio

# Extract configuration options
PUID=$(bashio::config 'PUID')
PGID=$(bashio::config 'PGID')
TZ=$(bashio::config 'TZ')
DATA_PATH=$(bashio::config 'data_path')
DOWNLOADS_PATH=$(bashio::config 'downloads_path')

# Update environment variables
export PUID PGID TZ

# Ensure directories exist
mkdir -p "$DATA_PATH" "$DOWNLOADS_PATH"

# Start the container
exec /usr/bin/rdtclient
