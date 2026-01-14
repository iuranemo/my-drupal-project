# Start from the official Drupal image
FROM drupal:latest

# Install git (optional, but useful) or other PHP extensions if needed
# RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Copy your custom theme from your Git repo into the container's theme directory
# The source path "themes/custom" is relative to your Git repo root
COPY themes/custom /var/www/html/themes/custom

# Ensure permissions are correct
RUN chown -R www-data:www-data /var/www/html/themes/custom

# Set the working directory
WORKDIR /var/www/html
