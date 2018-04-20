FROM library/postgres 

ENV POSTGRES_USER testuser 
ENV POSTGRES_PASSWORD testuser
ENV POSTGRES_DB devops

COPY init.sql /docker-entrypoint-initdb.d/
