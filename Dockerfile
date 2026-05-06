# Step 1: Use a lightweight base image
FROM nginx:stable-alpine

# Step 2: Metadata for the image
LABEL maintainer="Shah Zaman"
LABEL version="1.0"

# Step 3: Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Step 4: Copy our custom professional code
COPY src/index.html /usr/share/nginx/html/index.html

# Step 5: Expose port 80
EXPOSE 80

# Step 6: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
