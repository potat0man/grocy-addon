#!/usr/bin/with-contenv bashio

# Get configuration
CULTURE=$(bashio::config 'culture')
CURRENCY=$(bashio::config 'currency')
TZ=$(bashio::config 'tz')

# Create data directory if it doesn't exist
mkdir -p /data/grocy

bashio::log.info "Starting Grocy..."
bashio::log.info "Culture: ${CULTURE}"
bashio::log.info "Currency: ${CURRENCY}"
bashio::log.info "Timezone: ${TZ}"

# Set environment variables
export PUID=0
export PGID=0
export TZ="${TZ}"
export GROCY_CULTURE="${CULTURE}"
export GROCY_CURRENCY="${CURRENCY}"
export GROCY_MODE="production"

# Start Grocy
exec /init