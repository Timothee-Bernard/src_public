(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   atom.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 14:52:50 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/25 14:53:13 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual atom name symbol atomic_number =
	object (self)
		val _name : string = name
		val _symbol : string = symbol
		val _atomic_number : int = atomic_number

		method name : string = _name
		method symbol : string = _symbol
		method atomic_number : int = _atomic_number

		method to_string = self#name ^ " - symbole : " ^ self#symbol ^ " ; numero atomique : " ^ (string_of_int self#atomic_number) ^ "."
		method equals (other:atom) = if self#name = other#name  && self#symbol =  other#symbol && self#atomic_number = other#atomic_number then true else false
	end

