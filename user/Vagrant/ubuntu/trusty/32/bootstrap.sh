#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -q -y nginx php5 php5-cli php5-fpm php5-common php5-curl php5-gd php5-intl php5-mcrypt php5-recode php5-mysql php5-recode php5-sqlite php5-xmlrpc php5-xsl php5-xdebug php5-imagick mysql-client mysql-server imagemagick zip unzip mc
