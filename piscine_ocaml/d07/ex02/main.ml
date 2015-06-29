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
	let dalek = new Dalek.dalek in
		print_endline amy#to_string;
		print_endline dalek#to_string;
		print_endline doctor#to_string;
		dalek#talk;
		doctor#talk;
		doctor#use_sonic_screwdriver;
		ignore (dalek#take_dmg 40);
		doctor#use_sonic_screwdriver;
		ignore (dalek#take_dmg 40);
		print_endline "The dalek is going to exterminate!!";
		dalek#exterminate amy;
		doctor#use_sonic_screwdriver;
		ignore (dalek#take_dmg 40);
		ignore (dalek#die)