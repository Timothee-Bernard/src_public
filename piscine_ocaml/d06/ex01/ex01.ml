(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex01.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 13:33:28 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/24 11:32:53 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sum_ascii str =
	let l = String.length str in
		let rec str_sum_ascii s len i acc =
			if i = len then acc
			else str_sum_ascii s len (i + 1) (acc + (int_of_char s.[i]))
		in
		str_sum_ascii str l 0 0

module StringHashtbl2 =
struct
	type t = string
    let equal a b = ((String.compare a b) = 0)
    let hash a = (sum_ascii a)
end

module StringHashtbl = Hashtbl.Make(StringHashtbl2)

let () =
    let ht = StringHashtbl.create 5 in

    let values = [ "Hello"; "world"; "42"; "Ocaml"; "H" ] in

    let pairs = List.map (fun s -> (s, String.length s)) values in
    
    List.iter (fun (k,v) -> StringHashtbl.add ht k v) pairs;
    StringHashtbl.iter (fun k v -> Printf.printf "k = \"%s\", v = %d\n" k v) ht
