# Use official nginx alpine image (lightweight)
FROM nginx:alpine
 
# Remove default nginx placeholder files
RUN rm -rf /usr/share/nginx/html/*
 
# Copy your HTML template files into the nginx serving directory
COPY ./src /usr/share/nginx/html
 
# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf
 
# Expose port 80
EXPOSE 80
 
# Start nginx in foreground (required for Docker)
CMD ["nginx", "-g", "daemon off;"]
 
