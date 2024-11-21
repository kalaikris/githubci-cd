# Use the official NGINX image from the Docker Hub
FROM nginx:latest

# Copy your custom NGINX configuration file to the container
#COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static website files to the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
