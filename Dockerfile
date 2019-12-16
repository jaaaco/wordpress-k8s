FROM wordpress:5.3.1
RUN chown www-data:www-data -R * && find . -type d -exec chmod 755 {} \; && find . -type f -exec chmod 644 {} \;
ENV WORDPRESS_CONFIG_EXTRA "define('FS_METHOD','direct');"
ENV WORDPRESS_DB_HOST 127.0.0.1
ENV WORDPRESS_DB_USER wp
ENV WORDPRESS_DB_NAME wp
