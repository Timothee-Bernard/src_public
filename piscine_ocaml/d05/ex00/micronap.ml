(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 13:27:00 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/22 13:39:28 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let my_sleep () =
    Unix.sleep 1

let main argc argv =
	try
	for i = (int_of_string argv.(1)) downto 1 do
    	my_sleep ()
    done
	with
	| _			-> ()
	
let () =
    let argv = Sys.argv in
    ignore (main (Array.length argv) argv)


(* ocamlc `ocamlc -where`/unix.cma micronap.ml *)