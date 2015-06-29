(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   dalek.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 15:44:35 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/24 15:44:38 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let random_sentence n = match n with
		| 0		-> "Explain! Explain!"
		| 1		-> "Exterminate! Exterminate!"
		| 2		-> "I obey!"
		| _		-> "You are the Doctor! You are the enemy of the Daleks!"

let random_cap x = match x with
	| 0			-> 65
	| _ 		-> 97

let random_trio =
	Random.self_init ();
	let str = (String.make 1 (char_of_int ((Random.int 26) + (random_cap (Random.int 2))))) ^ 
				(String.make 1 (char_of_int ((Random.int 26) + (random_cap (Random.int 2))))) ^
				(String.make 1 (char_of_int ((Random.int 26) + (random_cap (Random.int 2))))) in
		str

class dalek =
	object (self)
		val _name : string = "Dalek" ^ random_trio
		val _hp : int = 100
		val mutable _shield : bool = true

		method set_shield b = _shield <- b
		method get_shield = _shield
		method get_name = _name
		method get_hp = _hp

		method take_dmg x = print_string self#get_name; print_string " took "; print_int x; print_endline " damage points.";
							if (self#get_hp - x) < 0 then self#die
							else {< _hp = (self#get_hp - x)>}

		method to_string = _name ^ " : " ^ (string_of_int _hp) ^ " health point."
		method talk = print_endline (random_sentence (Random.int 4))
		method die = print_endline "Emergency Temporal Shift!"; {< _name = self#get_name; _hp = 0>}
		method exterminate : People.people -> unit = fun target ->
			if self#get_shield = true then self#set_shield false
			else self#set_shield true;
			ignore (target#die)
	end