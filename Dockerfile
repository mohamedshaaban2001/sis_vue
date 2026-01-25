# Use Nginx as the base image for serving the built Vue.js application
FROM docker.io/library/nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the custom Nginx configuration file, if you have one
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the pre-built `dist` folder from the host machine into the container
COPY ./dist /usr/share/nginx/html/sis


# Expose port 80 to serve the application
EXPOSE 80


