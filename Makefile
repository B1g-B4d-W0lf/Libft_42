# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wfreulon <wfreulon@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/11 20:16:59 by wfreulon          #+#    #+#              #
#    Updated: 2022/11/28 21:43:22 by wfreulon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC =	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c \
ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c \
ft_toupper.c get_next_line.c get_next_line_utils.c ft_printf.c addfunctions.c
BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c\
ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
HEADERFILES = libft.h
OBJFILES = $(SRC:.c=.o)
OBJ_B = $(BONUS:.c=.o)
CFLAGS = -Wall -Wextra -Werror

$(NAME): $(OBJFILES)
	ar -rc $@ $^

all: $(NAME)

%.o: ft_%.c $(HEADERFILES)
	$(CC) -c $(CFLAGS) -o $@ $<
	
bonus: $(OBJ_B) $(OBJFILES)
	ar -rc $(NAME) $^

clean:
	rm -f $(OBJ_B)
	rm -f $(OBJFILES)

fclean:
	rm -f $(NAME) $(OBJFILES) $(OBJ_B)

re: fclean all
	
.PHONY: clean fclean all re bonus