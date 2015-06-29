(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   molecule.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 17:23:01 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/25 17:23:02 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let encode l =
    let rec loop lst acc str = match lst with
            | queue :: [] -> if acc = 0 then (str ^ queue#symbol)
            					else (str ^ queue#symbol ^ (string_of_int (acc + 1)))
            | head :: (queue :: _ as next) -> if (head = queue) then loop next (acc + 1) str
                                                else if acc = 0 then loop next 0 (str ^ head#symbol)
                                                else loop next 0 (str ^ head#symbol ^ (string_of_int (acc + 1)))
            | [] -> str
        in loop l 0 ""

class molecule name atoms =
	object (self)
		val _name : string = name
		val _formula : string = encode atoms

		method name = _name
		method formula = _formula

		method to_string = self#name ^ " - formule : " ^ self#formula ^ "."
		method equals (other:molecule) = if self#name = other#name  && self#formula =  other#formula then true else false

	end