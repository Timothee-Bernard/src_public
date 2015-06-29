(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 12:19:01 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/24 12:19:03 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = 
	let amy = new People.people ("Amy") in
		let doctor = new Doctor.doctor ("Doctor") (42) (amy) in
			print_endline doctor#to_string;
			doctor#talk;
			doctor#travel_in_time 2015 1998;
			doctor#use_sonic_screwdriver;
			ignore (doctor#reg);
			print_endline amy#to_string;
			amy#talk;
			amy#die
