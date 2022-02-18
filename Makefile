# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dalves-p <dalves-p@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/23 16:30:23 by dalves-p          #+#    #+#              #
#    Updated: 2022/02/17 21:46:28 by dalves-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	push_swap

LIBFT_DIR	= ./libft
LIBFT		= $(LIBFT_DIR)/libft.a

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror -g3


SRCS		=	srcs/push_swap.c \
				srcs/init.c \
				# srcs/check_order.c \
				# srcs/swap.c \
				# srcs/push.c \
				# srcs/rotate.c \

RM			=	rm -f
OBJS		=	$(SRCS:%.c=%.o)


all:		$(NAME)

$(NAME):	$(OBJS) $(LIBFT)
			$(CC) $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME)

$(LIBFT):			
			make -C $(LIBFT_DIR)

clean:
			make clean -C $(LIBFT_DIR)
			$(RM) $(OBJS)

fclean:		clean
			make fclean -C $(LIBFT_DIR)
			$(RM) $(NAME)

re:			fclean all

git:
	@git add .
	@git commit -m "$m"
	@git push
	@echo "Commit sent to github"
# To call: make git m="my commit"

.PHONY:		all clean fclean re
