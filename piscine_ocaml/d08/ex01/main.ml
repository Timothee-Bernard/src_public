(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 13:31:48 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/26 13:33:02 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let water = new Molecules.water and
		carbon_dioxyde = new Molecules.carbon_dioxyde and
		aspirin = new Molecules.aspirin and
		caffeine = new Molecules.caffeine and
		prozac = new Molecules.prozac and
		viagra = new Molecules.viagra and
		heroin = new Molecules.heroin and
		methamphetamine = new Molecules.methamphetamine and
		methadone = new Molecules.methadone and
		buprenorphine = new Molecules.buprenorphine in
		print_endline water#to_string;
		print_endline carbon_dioxyde#to_string;
		print_endline aspirin#to_string;
		print_endline caffeine#to_string;
		print_endline prozac#to_string;
		print_endline viagra#to_string;
		print_endline heroin#to_string;
		print_endline methamphetamine#to_string;
		print_endline methadone#to_string;
		print_endline buprenorphine#to_string