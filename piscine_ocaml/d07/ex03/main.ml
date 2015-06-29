(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 12:19:01 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/25 14:29:40 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	try
		let peoplearmy = new Army.army in
		let amy = peoplearmy#add (new People.people ("Amy")) in
		let rowry = peoplearmy#add (new People.people ("Rowry")) in
		let clara = peoplearmy#add (new People.people ("Clara")) in
		let rose = peoplearmy#add (new People.people ("Rose")) in
		let doctorarmy = new Army.army in
		let vicky = new People.people ("Vicky") in
		let doctor1 = doctorarmy#add (new Doctor.doctor ("Doctor1") (42) (vicky)) in
		let masha = new People.people ("Masha") in
		let doctor2 = doctorarmy#add (new Doctor.doctor ("Doctor2") (100) (masha)) in
		let loubna = new People.people ("Loubna") in
		let doctor3 = doctorarmy#add (new Doctor.doctor ("Doctor3") (56) (loubna)) in
		let gregory = new People.people ("Gregory") in
		let doctor4 = doctorarmy#add (new Doctor.doctor ("Doctor4") (9999) (gregory)) in
		let dalekarmy = new Army.army in
		let dalek1 = dalekarmy#add (new Dalek.dalek) in
		let dalek2 = dalekarmy#add (new Dalek.dalek) in
		let dalek3 = dalekarmy#add (new Dalek.dalek) in
		let dalek4 = dalekarmy#add (new Dalek.dalek) in
			ignore (dalekarmy#delete);
			ignore (dalekarmy#delete);
			ignore (dalekarmy#delete);
			ignore (dalekarmy#delete);
			ignore (doctorarmy#delete);
			ignore (doctorarmy#delete);
			ignore (doctorarmy#delete);
			ignore (doctorarmy#delete);
			ignore (peoplearmy#delete);
			ignore (peoplearmy#delete);
			ignore (peoplearmy#delete);
			ignore (peoplearmy#delete)
	with
	| _ -> ()
