(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 16:43:44 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/25 16:43:50 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let hydrogen = new Atoms.hydrogen and
		carbon = new Atoms.carbon and
		nitrogen = new Atoms.nitrogen and
		oxygen = new Atoms.oxygen and
		sodium = new Atoms.sodium and
		phosphorus = new Atoms.phosphorus and
		sulfur = new Atoms.sulfur and
		fluorine = new Atoms.fluorine and
		silver = new Atoms.silver and
		gold = new Atoms.gold and
		bismuth = new Atoms.bismuth and
		thorium = new Atoms.thorium and
		einsteinium = new Atoms.einsteinium and
		mendelevium = new Atoms.mendelevium and
		ununoctium = new Atoms.ununoctium in
			print_endline hydrogen#to_string;
			print_endline carbon#to_string;
			print_endline nitrogen#to_string;
			print_endline oxygen#to_string;
			print_endline sodium#to_string;
			print_endline phosphorus#to_string;
			print_endline sulfur#to_string;
			print_endline fluorine#to_string;
			print_endline silver#to_string;
			print_endline gold#to_string;
			print_endline bismuth#to_string;
			print_endline thorium#to_string;
			print_endline einsteinium#to_string;
			print_endline mendelevium#to_string;
			print_endline ununoctium#to_string;
			print_endline "\nComparaisons :";
			if hydrogen = carbon then print_endline "La comparaison hydrogen = carbon renvoie true."
									else print_endline "La comparaison hydrogen = carbon renvoie false.";
			if oxygen = nitrogen then print_endline "La comparaison oxygen = nitrogen renvoie true."
									else print_endline "La comparaison oxygen = nitrogen renvoie false.";
			if silver = gold then print_endline "La comparaison silver = gold renvoie true."
									else print_endline "La comparaison silver = gold renvoie false.";
			if bismuth = phosphorus then print_endline "La comparaison bismuth = phosphorus renvoie true."
									else print_endline "La comparaison bismuth = phosphorus renvoie false.";
			if sulfur = sodium then print_endline "La comparaison sulfur = sodium renvoie true."
									else print_endline "La comparaison sulfur = sodium renvoie false.";
			if thorium = einsteinium then print_endline "La comparaison thorium = einsteinium renvoie true."
									else print_endline "La comparaison thorium = einsteinium renvoie false.";
			if mendelevium = ununoctium then print_endline "La comparaison mendelevium = ununoctium renvoie true."
									else print_endline "La comparaison mendelevium = ununoctium renvoie false.";
			if silver = silver then print_endline "La comparaison silver = silver renvoie true."
									else print_endline "La comparaison silver = silver renvoie false."