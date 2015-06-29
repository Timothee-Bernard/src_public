(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 17:05:09 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/22 17:05:11 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
	let tab = Array.make 5 "" in
	Array.set tab 0 "C'est l'histoire d'un schtroumpf qui se fait un bleu.";
	Array.set tab 1 "Pourquoi la petite fille tombe de la balançoire? Parce qu'elle n'a pas de bras.";
	Array.set tab 2 "C'est un mec qui rentre dans un bar, puis dans une chaise, puis dans une table. Il se fait mal.";
	Array.set tab 3 "C'est l'histoire d'un belge.";
	Array.set tab 4 "Pourquoi le Bonbel? Parce que le Port-Salut.";
	Random.self_init ();
	print_endline (Array.get tab (Random.int 4))


let () = main ()