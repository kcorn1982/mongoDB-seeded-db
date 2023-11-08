FROM mongo

WORKDIR /

COPY data/* /
COPY seed.sh /docker-entrypoint-initdb.d/