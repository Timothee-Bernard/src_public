(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 20:17:11 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/20 20:17:54 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let print_deck deck =
	let rec loop d = 
		match d with
		| [] -> ()
		| card :: tail -> print_endline (Card.toStringVerbose card); loop tail 
	in loop deck

let main () =
	
	let card = Card.newCard Card.Value.T8 Card.Color.Heart in
	let card1 = Card.newCard Card.Value.T4 Card.Color.Club in
    let card2 = Card.newCard Card.Value.Jack Card.Color.Spade in
    
	print_endline (Card.toString 		card);
	print_endline (Card.toStringVerbose card);
	print_endline "";

	print_endline (Card.Value.toString 	(Card.getValue 	card));
	print_endline (Card.Color.toString 	(Card.getColor 	card));
	print_endline "";

	print_deck 	Card.allSpades;
	print_endline "";

	print_deck 	Card.all;
	print_endline "";

	print_endline (string_of_bool (Card.isSpade card));
	print_endline (string_of_bool (Card.isOf card Card.Color.Heart));
	print_endline "";

	print_endline ("COMPARE " ^ (string_of_int (Card.compare card card1)));
    print_endline ("MAX " ^ (Card.toStringVerbose (Card.max card card1)));
    print_endline ("MIN " ^ (Card.toStringVerbose (Card.min card card1)));
    print_endline ("BEST " ^ (Card.toStringVerbose (Card.best [card; card1; card2])))
    
let () = main ()
