# Base image with PostgreSQL and PostGIS
FROM postgres:latest

# Set up environment variables
ENV PGDATA=/var/pgdata
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD="cxmdb.24#"
ENV POSTGRES_DB=statesdb

# Create a directory to store PostgreSQL data and logs
RUN mkdir -p ${PGDATA} /tmp /var/log/postgresql && chown -R postgres:postgres ${PGDATA} /tmp /var/log/postgresql

# Create a directory for the SQL dump file and copy the dump file into it
RUN mkdir -p /data
COPY dump.sql /data/
RUN chmod 750 /data/dump.sql

# Copy entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose the PostgreSQL port
EXPOSE 5432

# Set the user to run the container
USER postgres

# Set the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
