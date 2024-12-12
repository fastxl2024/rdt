# RDTClient Addon for Home Assistant

This addon integrates the Real Debrid Torrent Client with Home Assistant.

## Configuration
- `PUID`: User ID (default: `1000`)
- `PGID`: Group ID (default: `1000`)
- `TZ`: Timezone (e.g., `Europe/London`)
- `data_path`: Path to store RDTClient data
- `downloads_path`: Path for downloads

## Access
Once started, the web interface is accessible at `http://<HA_IP>:6500`.

## Logs
Addon logs are available in the Home Assistant Supervisor.
