(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 13:31:48 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/26 19:39:16 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	Random.self_init ();
    let rec loop i n = match i with
    		| i when i <= n ->
    			begin
                    try
                        print_endline (new Alkane.alkane i)#to_string;
                        loop (i + 1) n
                    with
                    | Invalid_argument err -> print_endline err
                    | _ -> ()
                end
    		| _ -> ()
    in loop 1 21
