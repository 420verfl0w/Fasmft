# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stales <stales@student.42angouleme.fr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/08 16:12:22 by stales            #+#    #+#              #
#    Updated: 2022/06/08 16:12:26 by stales           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = olibft.a
SRC = $(wildcard src/*.s)
OBJ = $(SRC:.s=.o)
FASM = fasm

all: $(NAME)

%.o: %.s
	$(FASM) $< $@

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
