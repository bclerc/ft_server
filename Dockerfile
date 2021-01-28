# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bclerc <bclerc@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/28 13:27:29 by bclerc            #+#    #+#              #
#    Updated: 2021/01/28 13:44:43 by bclerc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

# Update and upgrade
RUN apt-get upgrade && apt-get update

# Install Nginx and all app
RUN apt-get -y install nginx
RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
#MySQL config and launch

#Nginx config
RUN rm /etc/nginx/sites-enabled/default
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD ./sources/default.conf /etc/nginx/conf.d/
ADD ./sources/info.php /usr/share/nginx/html/
ADD ./sources/index.php /usr/share/nginx/html/
ADD ./sources/phpMyAdmin.tar.gz /usr/share/nginx/html/
RUN mv /usr/share/nginx/html/phpMyAdmin-5.0.4-all-languages /usr/share/nginx/html/phpmyadmin
ADD ./sources/latest-fr_FR.tar.gz /usr/share/nginx/html/
# Launch Nginx and php
CMD service php7.3-fpm start && nginx -g 'daemon off;'