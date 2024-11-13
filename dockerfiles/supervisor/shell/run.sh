#!/bin/bash

echo "Starting script to check .env file..."

# Combine both checks for directory and .env.example existence in a single if statement
if [ "$(pwd)" = "/var/www/html" ] && [ -f ".env" ]; then
    echo "Already in /var/www/html and .env exists. Running reverb start commands..."
    php artisan reverb:start
else
    # If either condition fails
    echo "Not in /var/www/html or .env does not exist. Copying .env.example and generating key..."
    cd /var/www/html && cp .env.example .env
    php artisan key:generate
    php artisan storage:link    
    php artisan reverb:start
fi
