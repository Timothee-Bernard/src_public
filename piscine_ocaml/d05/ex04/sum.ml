(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sum.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 19:19:55 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/23 18:29:51 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sum : float -> float -> float = fun a b ->
	a +. b

let main () =
	print_float (sum 42. 6.54);
	print_char '\n';
	print_float (sum 4. 6.);
	print_char '\n';
	print_float (sum (-14.) 3.14);
	print_char '\n'
	(* print_float (sum 2 6) *)

let () = main ()
