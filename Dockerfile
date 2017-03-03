FROM mysql:latest
MAINTAINER axway@axway.com
ENV MYSQL_ROOT_PASSWORD=Admin@123
ADD joomla.sql /tmp/joomla.sql
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

