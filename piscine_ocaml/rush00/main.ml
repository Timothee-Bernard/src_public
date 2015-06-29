(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/21 12:50:15 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/21 12:50:31 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let victory player = match player with
	| 'o'	-> print_endline "O wins the grid";
				exit 0
	| _		-> print_endline "X wins the grid";
				exit 0

let get_cell_number x y = match x with
	| 1		-> if y = 1 then 1
				else if y = 2 then 2
				else if y = 3 then 3
				else 10
	| 2		-> if y = 1 then 4
				else if y = 2 then 5
				else if y = 3 then 6
				else 10
	| 3		-> if y = 1 then 7
				else if y = 2 then 8
				else if y = 3 then 9
				else 10
	| _		-> 10

let rec pos_char_of_split str c index =
  let len = (String.length str) - 1 in
  if index <= len then
    if str.[index] = c then
      index
    else
      pos_char_of_split str c (index + 1)
  else
    0

let get_x_coord str =
  let start = 0 in
  let len = pos_char_of_split str  ' ' 0 in
  String.sub str start len

let get_y_coord str =
  let start = pos_char_of_split str ' ' 0 in
  let len = (String.length str) - start in
  String.sub str (start + 1) (len - 1)

let str_epur str =
  String.trim str

let str_lhs str =
  let start = 0 in
  let len = pos_char_of_split str  ' ' 0 in
  String.sub str start len

let str_rhs str =
  let start = pos_char_of_split str ' ' 0 in
  let len = (String.length str) - start in
  String.sub str (start + 1) (len - 1)

let clean_input str =
  str_lhs (str_epur str) ^ " " ^ str_epur (str_rhs (str_epur str))

let rec is_playable map pos nb = match map with
	| []		->	false
	| hd :: tl	->	if (nb = pos) && (hd = '_') then true
					else is_playable tl pos (nb + 1)

let rec oturn map =
		print_endline "O's turn to play.";
		let coord = clean_input (read_line ()) in
			let x = get_x_coord coord and y = get_y_coord coord in
				let cell_number = get_cell_number (int_of_string x) (int_of_string y) in
				if is_playable map cell_number 1 then
				begin
					if cell_number <> 10 then 
					begin
						let newmap = Board.update_map map 'o' cell_number 1 [] in
						Board.draw_map newmap 0 0 ;
						if (Board.check_grid newmap 0) = false then xturn newmap
							else victory 'o'
					end
				end
				else 
				print_endline "Wrong input";
				oturn map

and xturn map =
		print_endline "X's turn to play.";
		let coord = clean_input (read_line ()) in
			let x = get_x_coord coord and y = get_y_coord coord in
				let cell_number = get_cell_number (int_of_string x) (int_of_string y) in
				if is_playable map cell_number 1 then
				begin
					if cell_number <> 10 then 
					begin
						let newmap = Board.update_map map 'x' cell_number 1 [] in
						Board.draw_map newmap 0 0 ;
						if (Board.check_grid newmap 0) = false then oturn newmap
							else victory 'x'
					end
				end
				else 
				print_endline "Wrong input";
				xturn map

let rec main () =
        let map = ['_';'_';'_';'_';'_';'_';'_';'_';'_'] in
        	Board.draw_map map 0 0 ;
            oturn map

let () =  main ()
