# Fetch latest tagged nginx image
FROM nginx:1.18-alpine

## Step 1:
# Remove indes.html from nginx latest
RUN rm /usr/share/nginx/html/index.html

## Step 2:
# Copy project source code (index.html) to working directory
COPY index.html /usr/share/nginx/html

