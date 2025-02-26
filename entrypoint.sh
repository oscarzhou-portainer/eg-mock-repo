#!/bin/sh

# Load environment variables from .env file if it exists
if [ -f /app/.env ]; then
  export $(grep -v '^#' /app/.env | xargs)
fi

# Print environment variables to confirm they are loaded (optional)
echo "Service Name: $SERVICE_NAME"
echo "Running on Port: $PORT"
echo "Database Host: $DB_HOST"

# Keep the container running
exec tail -f /dev/null
