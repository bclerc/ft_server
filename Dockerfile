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
ARG INDEX
# Update and upgrade
RUN apt-get upgrade && apt-get update

# Install Nginx and all app
RUN apt-get -y install nginx
RUN apt install -y mariadb-server mariadb-client
RUN apt install -y nano php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
#MySQL config and launch

#Nginx config
ENV autoindex   $INDEX
RUN rm /etc/nginx/sites-enabled/default
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD ./srcs/default.conf /etc/nginx/conf.d/
ADD ./srcs/info.php /usr/share/nginx/html/
ADD ./srcs/localhost.crt /etc/ssl/certs/
ADD ./srcs/localhost.key /etc/ssl/private/
ADD ./srcs/phpmyadmin /usr/share/nginx/html/phpmyadmin
ADD ./srcs/run.sh /
ADD ./srcs/wordpress /usr/share/nginx/html/wordpress
# Launch Nginx and php    
RUN rm /usr/share/nginx/html/index.html ../
CMD sh /run.sh