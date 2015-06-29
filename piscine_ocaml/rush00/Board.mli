(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Board.mli                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/21 11:32:47 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/21 11:43:30 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type state

val allState	: state list

type cell

val map 		: cell list

val ft_rev_list : 'a list -> 'a list -> 'a list

val update_map : char list -> char -> int -> int -> char list -> char list

val check_trio	: char -> char -> char -> bool

val check_grid	: char list -> int -> bool

val draw_map	: char list -> int -> int -> unit
