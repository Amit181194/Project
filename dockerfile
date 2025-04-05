# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy website files from the local directory to Nginx's web root directory
COPY . /usr/share/nginx/html/

# Expose port 80 to make the container's web server accessible
EXPOSE 80

# Start Nginx in the foreground (keeping the container running)
CMD ["nginx", "-g", "daemon off;"]
