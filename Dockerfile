# Base image
FROM nginx:alpine

# Copy your HTML to nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose nginx port
EXPOSE 80
