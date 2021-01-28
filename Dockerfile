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
RUN apt install nginx
#MySQL config and launch