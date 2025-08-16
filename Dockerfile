# Use the official Nginx web server image
FROM nginx:alpine

# Copy the Nginx configuration template
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Copy your HTML, CSS, and JS files
COPY . /usr/share/nginx/html

# Copy the startup script
COPY entrypoint.sh /docker-entrypoint.d/20-envsubst-on-templates.sh

# Make the startup script executable
RUN chmod +x /docker-entrypoint.d/20-envsubst-on-templates.sh
