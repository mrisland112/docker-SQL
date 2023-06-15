From mysql:latest
ENV MYSQL_ROOT_PASSWORD={root_password}
ENV MYSQL_DATABASE=mysql
ENV MYSQL_USER={user_name}
ENV MYSQL_PASSWORD={user_password}
#setup script
COPY ./dev-data.sql /docker-entrypoint-initdb.d/dev-data.sql
#port
EXPOSE 3306    
#run container in the background                                             
CMD ["mysqld"]