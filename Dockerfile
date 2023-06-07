# Use Ubuntu as the base image
FROM ubuntu

# Update the package lists and install Nginx
RUN apt update && apt install -y nginx

# Copy your web page files to the container
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
