(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 12:18:54 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/24 12:18:56 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor name age sidekick =
	object (self)
		initializer print_endline "Creation d'une instance doctor"

		val _name : string = name
		val _age : int = age
		val _sidekick : People.people = sidekick
		val _hp : int = 100
		
		method to_string = _name ^ " : " ^ (string_of_int _age) ^ " years old, sidekick : " ^ _sidekick#get_name ^ ", hp : " ^ (string_of_int _hp) ^ "."
		method talk = print_endline "Hi! I’m the Doctor!" 
		method travel_in_time start arrival =
			print_string "Travel from "; print_int start; print_string " to "; print_int arrival; print_string ".\n";
			print_string 
"          _
         /-\\
    _____|#|_____
   |_____________|
  |_______________|
|||_POLICE_##_BOX_|||
 | |¯|¯|¯|||¯|¯|¯| |
 | |-|-|-|||-|-|-| |
 | |_|_|_|||_|_|_| |
 | ||~~~| | |¯¯¯|| |
 | ||~~~|!|!| O || |
 | ||~~~| |.|___|| |
 | ||¯¯¯| | |¯¯¯|| |
 | ||   | | |   || |
 | ||___| | |___|| |
 | ||¯¯¯| | |¯¯¯|| |
 | ||   | | |   || |
 | ||___| | |___|| |
|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|
 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
"
		method use_sonic_screwdriver = print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"
		method private regenerate  = {< _name = _name; _age = _age; _sidekick = _sidekick; _hp = 100>}
		method reg = (self#regenerate)
	end