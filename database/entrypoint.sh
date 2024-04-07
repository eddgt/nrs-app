#!/bin/bash

# Start PostgreSQL service
/etc/init.d/postgresql start


# Crea el usuario si no existe
echo "Creando usuario..."
psql -U $POSTGRES_USER -d $POSTGRES_DB -c "CREATE USER IF NOT EXISTS postgres WITH PASSWORD 'cxmdb.24#';"

echo "Concediendo permisos al usuario sobre la base de datos..."
psql -U $POSTGRES_USER -d $POSTGRES_DB -c "GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB TO $POSTGRES_USER;"

# Restore database using dump file
psql -U $POSTGRES_USER -d $POSTGRES_DB -f /data/dump.sql

# Stop PostgreSQL service
/etc/init.d/postgresql stop

# Execute CMD
exec "$@"
