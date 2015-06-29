(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 11:56:52 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/25 11:56:53 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class ['a] army =
	object (self)
		val _block : 'a list = []

		method add (e:'a) = {< _block = e::_block >}
		method delete =  if List.length _block > 1 then {< _block = (List.tl _block) >}
							else {< _block = _block >}
	end