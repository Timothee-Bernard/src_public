(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex00.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 13:10:28 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/23 13:13:03 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module StringSet = Set.Make (String)

let () =
    let set = List.fold_right StringSet.add [ "foo"; "bar"; "baz"; "qux" ] StringSet.empty in
    StringSet.iter print_endline set;
    print_endline (StringSet.fold ( ^ ) set "")
