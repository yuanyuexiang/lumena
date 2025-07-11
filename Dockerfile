# Dockerfile for frontend static files
FROM nginx:alpine

# Copy frontend files to nginx html directory
COPY frontend/ /usr/share/nginx/html/

# Copy custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]