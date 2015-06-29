(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 12:52:09 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/15 17:25:15 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet () =
    let ascii_display = int_of_char 'a' in
    let rec ft_print c = 
        if c <= int_of_char 'z' then
           begin
            print_char (char_of_int c);
            ft_print (c + 1)
           end
    in
    ft_print ascii_display;
    print_char '\n'

let main () =
    ft_print_alphabet ()

let () = main ()
