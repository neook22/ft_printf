NAME = libftprintf.a

SRCS = ft_printf.c ft_print_char.c ft_print_hexa.c ft_print_upper_hexa.c ft_print_integers.c ft_print_pointer.c ft_print_str.c ft_print_unsintegers.c ft_putchar.c

OBJS = ${SRCS:.c=.o}

CC		= gcc
RM		= rm -f

CFLAGS = -Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}

all:	${NAME}

$(NAME): ${OBJS}
		ar rcs ${NAME} ${OBJS}

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

PHONY:	re flcean clean all
