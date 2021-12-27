FROM alpine:3.15.0 as builder
WORKDIR /tmp
COPY sql/ ./sql/
COPY load_sql_script.sh sql_script_load_order.txt ./
RUN sh ./load_sql_script.sh  # output goes to ${WORKDIR}/public

FROM mysql:5.7.33
COPY --from=builder /tmp/public/ /docker-entrypoint-initdb.d/
RUN ls -al /docker-entrypoint-initdb.d/
