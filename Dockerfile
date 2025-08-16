# Use the official Nginx web server image as a base
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/conf.d

# Copy your HTML, CSS, and JS files into the web server's public folder
COPY . /usr/share/nginx/html
