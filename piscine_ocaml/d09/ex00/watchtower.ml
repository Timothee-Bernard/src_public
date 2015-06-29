(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   watchtower.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 16:34:15 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/26 16:34:17 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Watchtower =
	struct
		type hour = int
		let zero : hour = 12

		let add : hour -> hour -> hour = fun param1 param2	->
			if param1 = zero && param2 = param1 then zero
			else((abs param1) + (abs param2)) mod zero
		let sub : hour -> hour -> hour = fun param1 param2	->
			if param1 = zero && param2 = param1 then zero
			else ((param1 + zero) - param2) mod zero
	end

let () =
	let hour1:Watchtower.hour = 1 in
	let hour2:Watchtower.hour = 2 in	
	let hour3:Watchtower.hour = 3 in
	let hour4:Watchtower.hour = 4 in
	let hour5:Watchtower.hour = 5 in
	let hour6:Watchtower.hour = 6 in
	let hour7:Watchtower.hour = 7 in
	let hour8:Watchtower.hour = 8 in
	let hour9:Watchtower.hour = 9 in
	let hour10:Watchtower.hour = 10 in
	let hour11:Watchtower.hour = 11 in
	let hour12:Watchtower.hour = 12 in
	let forward:Watchtower.hour = Watchtower.add hour1 hour12 in
	let forward1:Watchtower.hour = Watchtower.add hour4 hour10 in
	let forward2:Watchtower.hour = Watchtower.add hour9 hour7 in
	let forward3:Watchtower.hour = Watchtower.add hour3 hour3 in
	let forward4:Watchtower.hour = Watchtower.add hour12 hour5 in
	let forward5:Watchtower.hour = Watchtower.add hour6 hour8 in
	let forward6:Watchtower.hour = Watchtower.add hour12 hour12 in
	print_string "add hour1 hour12 : "; print_endline (string_of_int forward);
	print_string "add hour4 hour10 : "; print_endline (string_of_int forward1);
	print_string "add hour9 hour7 : "; print_endline (string_of_int forward2);
	print_string "add hour3 hour3 : "; print_endline (string_of_int forward3);
	print_string "add hour12 hour5 : "; print_endline (string_of_int forward4);
	print_string "add hour6 hour8 : "; print_endline (string_of_int forward5);
	print_string "add hour12 hour12 : "; print_endline (string_of_int forward6);

	let backward:Watchtower.hour = Watchtower.sub hour2 hour11 in
	let backward1:Watchtower.hour = Watchtower.sub hour11 hour2 in
	let backward2:Watchtower.hour = Watchtower.sub hour4 hour12 in
	let backward3:Watchtower.hour = Watchtower.sub hour12 hour11 in
	let backward4:Watchtower.hour = Watchtower.sub hour1 hour7 in
	let backward5:Watchtower.hour = Watchtower.sub hour5 hour10 in
	let backward6:Watchtower.hour = Watchtower.sub hour12 hour12 in
	print_string "sub hour2 hour11 : "; print_endline (string_of_int backward);
	print_string "sub hour11 hour2 : "; print_endline (string_of_int backward1);
	print_string "sub hour4 hour12 : "; print_endline (string_of_int backward2);
	print_string "sub hour12 hour11 : "; print_endline (string_of_int backward3);
	print_string "sub hour1 hour7 : "; print_endline (string_of_int backward4);
	print_string "sub hour5 hour10 : "; print_endline (string_of_int backward5);
	print_string "sub hour12 hour12 : "; print_endline (string_of_int backward6)