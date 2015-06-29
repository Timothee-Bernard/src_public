# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/19 11:21:33 by tibernar          #+#    #+#              #
#    Updated: 2015/06/24 12:09:58 by tibernar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		app

SRC			=		app.ml

OBJOPT		=		$(SRC:.ml=.cmx)

OBJC		=		$(SRC:.ml=.cmo)

all:				$(NAME)

$(NAME):			$(NAME).opt $(NAME).byt
	rm -rf $(NAME)
	ln -s $(NAME).opt $(NAME)

$(NAME).opt:		$(OBJOPT)
	ocamlopt $(OBJOPT) -o $(NAME).opt

$(NAME).byt:		$(OBJC)
	ocamlc $(OBJC) -o $(NAME).byt

%.cmx:				%.ml
	ocamlopt -c $(SRC) $<

%.cmo:				%.ml
	ocamlc -c $(SRC) $<

clean:
	rm -rf $(SRC:.ml=.cm*) $(SRC:.ml=.o)

fclean:				clean
	rm -rf $(NAME).byt $(NAME).opt $(NAME)

re:					fclean all
