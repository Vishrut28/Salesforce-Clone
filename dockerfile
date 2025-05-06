# Use official Nginx base image
FROM nginx:alpine

# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy only your HTML/CSS files into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx (optional because it's the default CMD in nginx image)
CMD ["nginx", "-g", "daemon off;"]
