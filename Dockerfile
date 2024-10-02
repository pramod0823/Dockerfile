# Use the official Nginx image from the Docker Hub
FROM docker.io/nginx:alpine

# Copy your static files (if any) to the Nginx html directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

