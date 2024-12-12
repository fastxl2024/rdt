# RDTClient Addon for Home Assistant

This repository contains a custom Home Assistant addon for the Real Debrid Torrent Client.

## Features
- Easy installation and configuration
- Web interface available at `http://<HA_IP>:6500`

## Installation
1. Clone this repository to your Home Assistant `addons` directory.
2. Restart the Home Assistant Supervisor.
3. Find and install the addon from the Add-on Store.

## Configuration
Update the addon settings in the Home Assistant UI:
- `PUID`: User ID (default: `1000`)
- `PGID`: Group ID (default: `1000`)
- `TZ`: Timezone (e.g., `Europe/London`)
- `data_path`: Path to store RDTClient data
- `downloads_path`: Path for downloads

## License
This project is licensed under the MIT License.
