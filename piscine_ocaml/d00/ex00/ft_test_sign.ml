(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 10:20:02 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/15 10:41:31 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign nb =
    if nb < 0 then
        print_endline "negative"
    else
        print_endline "positive"

let main () = 
    ft_test_sign 123 ;
    ft_test_sign (-456) ;
    ft_test_sign 0

let () = main ()
