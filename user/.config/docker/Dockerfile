FROM daald/ubuntu32:vivid

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y mysql-client mysql-server apache2
RUN apt-get install -y libapache2-mod-php5 php5 php5-common php5-curl php5-json php5-mysql php5-xdebug

RUN systemctl enable apache2
RUN systemctl enable mysql
RUN mysql_install_db

RUN service apache2 start
RUN service mysql start

EXPOSE 80
EXPOSE 3306

VOLUME /var/www/html
