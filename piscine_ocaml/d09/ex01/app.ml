(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   app.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/27 15:28:16 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/27 15:28:19 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* module App :
	sig
		type project = string * string * int
		val zero : project
		val combine : project -> project -> project
		val fail : project -> project
		val success : project -> project
	end *)

module App =
	struct
		type project = string * string * int
		let zero : project = ("", "", 0)

		let combine : project -> project -> project = fun (x1, y1, z1) (x2, y2, z2) ->
			if ((z1 + z2) / 2) > 80 then (x1 ^ x2, "succeed", ((z1 + z2) / 2))
			else (x1 ^ x2, "failed", ((z1 + z2) / 2))

		let fail : project -> project = fun (x, y, z) ->
			(x, "failed", 0)

		let success : project -> project = fun (x, y, z) ->
			(x, "succeed", 80)
	end

let print_proj : App.project -> unit = fun (x, y, z) ->
	print_string x;
	print_char ' ';
	print_string y;
	print_char ' ';
	print_int z;
	print_char '\n'


let () =
	let project1:App.project = ("test1", "succeed", 100) in
	let project2:App.project = ("test2", "failed", 70) in
	let comb1:App.project = App.combine project1 project2 in
	let fail:App.project = App.fail project1 in
	let success:App.project = App.success project2 in
	print_proj project1;
	print_proj project2;
	print_proj comb1;
	print_proj fail;
	print_proj success