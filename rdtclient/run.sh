#!/usr/bin/with-contenv bashio

# Extract configuration options
PUID=$(bashio::config 'PUID')
PGID=$(bashio::config 'PGID')
TZ=$(bashio::config 'TZ')
DATA_PATH=$(bashio::config 'data_path')
DOWNLOADS_PATH=$(bashio::config 'downloads_path')

# Export environment variables
export PUID PGID TZ

# Ensure directories exist
mkdir -p "$DATA_PATH" "$DOWNLOADS_PATH"

# Log startup details
bashio::log.info "Starting RDTClient with PUID=$PUID, PGID=$PGID, and TZ=$TZ"

# Start RDTClient
exec /usr/bin/rdtclient
