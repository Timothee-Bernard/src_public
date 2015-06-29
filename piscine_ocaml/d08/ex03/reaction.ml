(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   reaction.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 19:02:27 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/26 19:23:40 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual reaction start_p end_p =
	object (self)
		method virtual get_start: (Molecule.molecule * int) list
		method virtual get_result: (Molecule.molecule * int) list
		method virtual balance: reaction
		method virtual is_balanced: bool
	end
