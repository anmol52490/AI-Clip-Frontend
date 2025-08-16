#!/bin/sh
# This script runs when the container starts.
# It substitutes environment variables in the Nginx config template.

# Define the template path and the final output path
TEMPLATE_FILE="/etc/nginx/templates/default.conf.template"
OUTPUT_FILE="/etc/nginx/conf.d/default.conf"

# Use envsubst to replace ${PORT} with the actual port number
envsubst '$PORT' < "$TEMPLATE_FILE" > "$OUTPUT_FILE"

# Now, let the original Nginx entrypoint continue
exec "$@"
