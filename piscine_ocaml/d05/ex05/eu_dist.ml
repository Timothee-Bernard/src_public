(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 19:41:29 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/22 19:42:31 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let eu_dist array1 array2 =
	let l1 = Array.length array1 and l2 = Array.length array2 in
		if l2 <> l1 then raise (Invalid_argument "Coordinates do not match.")
		else
		let rec ft_dist tab1 tab2 i l acc =
			if i = l then (sqrt acc)
			else ft_dist tab1 tab2 (i + 1) l (acc +. ((tab1.(i) -. tab2.(i))**2.) )
	in ft_dist array1 array2 0 l1 0.

let main () =
	let tab1 = [|604.2;894.2;454.2;12.6;685.2;543.2|] and tab2 = [|5.6;9.4;5.1;2.;7.2;6.2|] in
		print_float (eu_dist tab1 tab2);
		print_char '\n'

let () = main ()