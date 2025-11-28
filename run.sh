#!/usr/bin/with-contenv bash

CONFIG_PATH=/data/options.json

# Get configuration
CULTURE=$(jq --raw-output '.culture // "en"' $CONFIG_PATH)
CURRENCY=$(jq --raw-output '.currency // "USD"' $CONFIG_PATH)
TZ=$(jq --raw-output '.tz // "America/New_York"' $CONFIG_PATH)

echo "Starting Grocy..."
echo "Culture: ${CULTURE}"
echo "Currency: ${CURRENCY}"
echo "Timezone: ${TZ}"

# Set environment variables for LinuxServer container
export PUID=0
export PGID=0
export TZ="${TZ}"
export GROCY_CULTURE="${CULTURE}"
export GROCY_CURRENCY="${CURRENCY}"

# Start Grocy using the LinuxServer init system
exec /init
