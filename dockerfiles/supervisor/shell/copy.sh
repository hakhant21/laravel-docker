#!/bin/sh
echo "Copying .env file..."

if [ -f /var/www/html/.env ]; then
    echo "File already exists."
else
    cp /var/www/html/.env.example /var/www/html/.env
fi

php /var/www/html/artisan key:generate

echo "php artisan key generated."