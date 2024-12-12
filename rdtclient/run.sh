#!/usr/bin/with-contenv bashio

# Extract configuration options from the Home Assistant add-on configuration
PUID=$(bashio::config 'PUID')
PGID=$(bashio::config 'PGID')
TZ=$(bashio::config 'TZ')
DATA_PATH=$(bashio::config 'data_path')
DOWNLOADS_PATH=$(bashio::config 'downloads_path')

# Log the extracted configuration
bashio::log.info "Configuring RDTClient with the following settings:"
bashio::log.info "PUID=$PUID, PGID=$PGID, Timezone=$TZ"
bashio::log.info "Data Path=$DATA_PATH, Downloads Path=$DOWNLOADS_PATH"

# Export the environment variables for the application
export PUID PGID TZ

# Ensure the required directories exist
mkdir -p "$DATA_PATH" "$DOWNLOADS_PATH"
chown -R "$PUID:$PGID" "$DATA_PATH" "$DOWNLOADS_PATH"

# Log that the application is starting
bashio::log.info "Starting RDTClient..."

# Start the RDTClient application
exec /usr/bin/rdtclient
