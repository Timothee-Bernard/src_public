(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Board.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/21 11:32:23 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/21 11:43:26 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type state = P1 | P2 | W1 | W2

let allState = [P1;P2;W1;W2]

type cell = C1 | C2 | C3 | C4 | C5 | C6 | C7 | C8 | C9

let map = [C1;C2;C3;C4;C5;C6;C7;C8;C9]

let rec ft_rev_list lst res = match lst with
        | [] -> res
        | head :: queue -> ft_rev_list queue (head::res)

let rec update_map map player pos nb ret = match map with
	| []		->	ft_rev_list ret []
	| hd :: tl	->	if (nb = pos) && (hd = '_') then update_map tl player pos (nb + 1) (player :: ret)
					else update_map tl player pos (nb + 1) (hd :: ret)

let check_trio a b c =
	if a = b && a = c && b = c && (a <> '_') then true
	else false

let rec check_grid map pos = match pos with
		| 0			->	if ( check_trio (List.nth map 0) (List.nth map 1) (List.nth map 2) ||
						check_trio (List.nth map 0) (List.nth map 4) (List.nth map 8) ||
						check_trio (List.nth map 0) (List.nth map 3) (List.nth map 6) ) then true else check_grid map 2
		| 2			-> if ( check_trio (List.nth map 2) (List.nth map 5) (List.nth map 8) ||
						check_trio (List.nth map 2) (List.nth map 6) (List.nth map 8) ) then true else check_grid map 4
		| 4			-> if ( check_trio (List.nth map 1) (List.nth map 4) (List.nth map 7) ||
						check_trio (List.nth map 3) (List.nth map 4) (List.nth map 5) ) then true else check_grid map 7
		| 7			-> check_trio (List.nth map 6) (List.nth map 7) (List.nth map 8)
		| _			-> false


let rec draw_map map row line = match map with
		| []		-> print_newline ()
		| hd :: tl	->
					if row = 2 then
						begin
							print_char hd;
							print_char '\n';
							draw_map tl 0 (line + 1)
						end
					else 
						begin
							print_char hd;
							print_char ' ';
							draw_map tl (row + 1) line
						end

