# Imagen base oficial de Postgres
FROM postgres:15

# Variables de entorno para crear la BD inicial
ENV POSTGRES_USER=pinito
ENV POSTGRES_PASSWORD=ween123
ENV POSTGRES_DB=final_exam

# Copiar todos los scripts SQL de inicializacion
# Se ejecuta automaticamente al iniciar por primera vez el contenedor
COPY ./*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
