# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bclerc <bclerc@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/28 13:27:29 by bclerc            #+#    #+#              #
#    Updated: 2021/01/28 13:41:54 by bclerc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

# Update and upgrade
RUN sudo apt-get upgrade && apt-get update

# Install Nginx and all app
RUN sudo apt install nginx
#MySQL config and launch