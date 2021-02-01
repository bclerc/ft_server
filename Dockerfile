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
RUN apt install -y mariadb-server mariadb-client
RUN apt install -y nano php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
#MySQL config and launch

#Nginx config
RUN rm /etc/nginx/sites-enabled/default
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD ./sources/default.conf /etc/nginx/conf.d/
ADD ./sources/info.php /usr/share/nginx/html/
ADD ./sources/index.php /usr/share/nginx/html/
ADD ./sources/localhost.crt /etc/ssl/certs/
ADD ./sources/localhost.key /etc/ssl/private/
ADD ./sources/phpmyadmin /usr/share/nginx/html/phpmyadmin
ADD ./sources/run.sh /
ADD ./sources/wordpress /usr/share/nginx/html/
# Launch Nginx and php    
CMD sh /run.sh