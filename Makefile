# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gissao-m <gissao-m@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/17 12:09:18 by gissao-m          #+#    #+#              #
#    Updated: 2022/07/06 12:15:21 by gissao-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

HEADER = ./ft_printf.h

SRCS = ./ft_printf.c \
		 ./ft_printf_utils.c\
		
CFLAGS =  -Wall -Wextra -Werror -g

CC = gcc

OBJS = ${SRCS:.c=.o}

all:        $(NAME)

$(NAME):    $(OBJS)
		ar -rcs -o $(NAME) $(OBJS)

.c.o:
			$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

clean:

	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
