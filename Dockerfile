# Use Nginx base image

FROM nginx:stable-alpine

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./images /usr/share/nginx/html/images
COPY ./nginx.conf /etc/nginx/conf.d/default.conf



# Expose port 80
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]


