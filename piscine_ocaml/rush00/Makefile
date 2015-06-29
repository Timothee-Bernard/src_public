# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/19 11:21:33 by tibernar          #+#    #+#              #
#    Updated: 2015/06/19 11:40:25 by tibernar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME				=		thegame

SOURCES				=		Board.mli\
							Board.ml\
							main.ml

CAMLC				=		ocamlc
CAMLOPT				=		ocamlopt
CAMLDEP				=		ocamldep

LIBS				=		$(WITH)
WHIT				=		.cma -cclib -l

all:				depend $(NAME)

$(NAME):			opt byt
	ln -s $(NAME).opt $(NAME)

opt:				$(NAME).opt
byt:				$(NAME).byt

OBJS				=		$(SOURCES:.ml=.cmo)
OPTOBJS				=		$(SOURCES:.ml=.cmx)

$(NAME).opt:		$(OPTOBJS)
	$(CAMLOPT) -o $(NAME).opt $(LIBS:.cma=.cmxa) $(OPTOBJS)

$(NAME).byt:		$(OBJS)
	$(CAMLC) -o $(NAME).byt $(LIBS) $(OBJS)

.SUFFIXES:
.SUFFIXES:			.ml .mli .cmo .cmi .cmx

.ml.cmo:
	$(CAMLC) -c $<
.mli.cmi:
	$(CAMLC) -c $<
.ml.cmx:
	$(CAMLOPT) -c $<

clean:
	rm -f *cm[iox] *~ .*~ #*#
	rm -f *.o

fclean:				clean
	rm -f $(NAME)
	rm -f $(NAME).opt
	rm -f $(NAME).byt

.depend:
	touch .depend

depend:				.depend
	$(CAMLDEP) $(SOURCES) > .depend

re:					fclean all

include .depend
