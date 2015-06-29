(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 11:38:42 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/24 11:38:44 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people name =
	object (self)
		initializer print_endline "Creation d'une instance people"

		val _name:string = name
		val _hp:int = 100

		method get_name = _name
		method to_string = _name ^ " : " ^ (string_of_int _hp) ^ " health point."
		method talk = 	print_string "I’m "; print_string _name; print_endline "! Do you know the Doctor?"
		method die  = 	ignore ({< _name = self#get_name; _hp = 0>});
						print_endline "Aaaarghh!"
	end