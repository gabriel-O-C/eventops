FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_DB=eventops
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=mypassword

# Expose the default PostgreSQL port (5432)
EXPOSE 5432

# Copy SQL files to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# You can add additional configurations or customizations here if needed

# Start PostgreSQL
CMD ["postgres"]
