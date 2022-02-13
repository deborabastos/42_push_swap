# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dalves-p <dalves-p@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/23 16:30:23 by dalves-p          #+#    #+#              #
#    Updated: 2022/02/13 17:22:52 by dalves-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	push_swap
CC			=	gcc
SRCS		=	srcs/push_swap.c \
				srcs/push_swap_utils.c \

CFLAGS		=	-Wall -Wextra -Werror -g3
RM			=	rm -f
OBJS		=	$(SRCS:%.c=%.o)
OBJS_BONUS	=	$(SRCS_BONUS:%.c=%.o)
OBJS_LIB	=	$(SRCS_LIB:%.c=%.o)


all:		$(NAME)

$(NAME):	$(OBJS) $(OBJS_LIB)
			$(CC) $(OBJS) $(OBJS_LIB) $(CFLAGS) -o $(NAME)

clean:
			$(RM) $(OBJS) $(OBJS_LIB) $(OBJS_BONUS)

fclean:		clean
			$(RM) $(NAME)
			$(RM) *.out

re:			fclean all

git:
	@git add .
	@git commit -m "$m"
	@git push
	@echo "Commit sent to github"
# To call: make git m="my commit"