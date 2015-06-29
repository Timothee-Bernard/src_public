(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 14:16:11 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/22 14:19:34 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = {mutable contents : 'a}

let return : 'a -> 'a ft_ref = fun x ->
	{contents = x}

let get : 'a ft_ref -> 'a = fun r ->
	r.contents

let set : 'a ft_ref -> 'a -> unit = fun r x ->
	r.contents <- x

let f x = x

let bind : 'a ft_ref -> ('a -> 'b ft_ref) -> 'b ft_ref = fun r f ->
	f r.contents

let main () =
	let mutant = {contents = 42} in
		print_endline "mutant = {contents = 42}";
		print_string "get mutant : ";
		print_int (get mutant);
		print_char '\n';
		let newmutant = return 24 in
			print_string "let newmutant = return 24; get newmutant : ";
			print_int (get newmutant);
			print_char '\n';
			print_string "set mutant 84; get mutant : ";
			set mutant 84;
			print_int (get mutant);
			print_char '\n';
			print_string "get (bind mutant (fun x -> return (x + x))) : ";
			print_int (get (bind mutant (fun x -> return (x + x))));
			print_char '\n'

let () = main ()