# Use Nginx as the base image
FROM nginx:alpine

# Set working directory to Nginx HTML folder
WORKDIR /usr/share/nginx/html

# Remove default Nginx index page
RUN rm -rf ./*

# Copy custom profile page files into container
COPY index.html .
COPY style.css .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Nginx will automatically serve index.html
