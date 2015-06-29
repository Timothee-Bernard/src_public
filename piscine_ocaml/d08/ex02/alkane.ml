(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   alkane.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 17:33:41 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/26 17:33:58 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let hydrogen = new Atoms.hydrogen
let carbon = new Atoms.carbon

let alkane_name_gen x = match x with
	| 1				-> "Méthane"
	| 2				-> "Éthane"
	| 3				-> "Propane"
	| 4				-> "Butane"
	| 5				-> "Pentane"
	| 6				-> "Hexane"
	| 7				-> "Heptane"
	| 8				-> "Octane"
	| 9				-> "Nonane"
	| 10			-> "Décane"
	| 11			-> "Undécane"
	| 12 			-> "Dodécane"
	| 13 			-> "Tridécane"
	| 14 			-> "Tétradécane"
	| 15 			-> "Pentadécane"
	| 16 			-> "Cétane"
	| 17 			-> "Heptadécane"
	| 18 			-> "Octadécane"
	| 19 			-> "Nonadécane"
	| 20 			-> "Eicosane"
	| 21 			-> "Heneicosane"
	| 22			-> "Docosane"
	| 23 			-> "Tricosane"
	| 24 			-> "Tétracosane"
	| 25 			-> "Pentacosane"
	| 26 			-> "Hexacosane"
	| 27 			-> "Heptacosane"
	| 28 			-> "Octacosane"
	| 29 			-> "Nonacosane"
	| 30 			-> "Triacontane"
	| 31 			-> "Untriacontane"
	| 32 			-> "Dotriacontane"
	| 33 			-> "Tritriacontane"
	| 34 			-> "Tétratriacontane"
	| 35 			-> "Pentatriacontane"
	| 36 			-> "Hexatriacontane"
	| 37 			-> "Heptatriacontane"
	| 38 			-> "Octatriacontane"
	| 39 			-> "Nonatriacontane"
	| 40			-> "Tétracontane"
	| _ 			-> (string_of_int x) ^ "-alkane"


let alkane_formula_gen n =
    let rec loop i acc_c acc_h = match i with
    		| i when i = n 	-> acc_c @ acc_h
    		| _ 			-> loop (i + 1) (acc_c @ [carbon]) (acc_h @ [hydrogen; hydrogen])
    in loop 0 [] [hydrogen; hydrogen]

class alkane n =
	object (self)
		inherit Molecule.molecule (alkane_name_gen n) (alkane_formula_gen n)
	end
