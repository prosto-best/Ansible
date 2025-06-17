FROM postgres:15.1-alpine
WORKDIR /opt
COPY init.sql /docker-entrypoint-initdb.d
USER postgres
# CMD [ "psql -u postgres -d postgres -f init.sql" ]
# CMD [ "./mvnw spring-boot:run" ]