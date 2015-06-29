(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 18:17:31 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/22 18:17:35 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let line_nb src = 
	let chanel = open_in src in
	let k = ref 0 in
	begin
		try
			while true do
				ignore (input_line chanel);
				k := !k + 1
			done
		with
		| end_of_file -> ();
	end;
	close_in chanel;
	!k

let main () =
	try
	let chanel = open_in Sys.argv.(1) in
		let nb_line = line_nb Sys.argv.(1) in
			let tab = Array.make nb_line "" in
				for i = 1 to nb_line do 
					Array.set tab (i - 1) (input_line chanel)
				done;
				close_in chanel;
				Random.self_init ();
				print_endline (Array.get tab (Random.int (nb_line - 1)))
	with
	| _			-> ()

let () = main ()