(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 16:16:16 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/16 17:09:57 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev my_array =
    let l = String.length my_array in
    let rec ft_rev s n = 
        if n = -1 then
            print_char '\n'
        else
            let char_to_display = (String.get s n) in
            print_char char_to_display;
            ft_rev s (n - 1)
    in
    ft_rev my_array (l - 1)

let main () =
    ft_print_rev "salut";
    ft_print_rev ""

let () = main ()
