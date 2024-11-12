#!/bin/sh

# Run php artisan install:broadcasting
yes | php /var/www/html/artisan install:broadcasting

# Install npm dependencies
yes | npm /var/www/html install

# Build the assets
npm /var/www/html run build

# Run php artisan key:generate
php /var/www/html/artisan reverb:start


