FROM alpine:latest

# Install Apache
RUN apk update && apk add apache2 && apk add nano

# Expose HTTP port
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]

