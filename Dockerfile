# Use the official Nginx web server image
FROM nginx:alpine

# Copy your HTML, CSS, and JS files into the web server's public folder
COPY . /usr/share/nginx/html
