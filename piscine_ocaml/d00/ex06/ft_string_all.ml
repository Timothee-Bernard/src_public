(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 17:39:12 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/16 14:08:02 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_digit c = c >= '0' && c <= '9'

let ft_string_all func s =
    let l = (String.length s) - 1 in
    let rec ft_check x acc =
        if (x <= l) then ft_check (x + 1) (acc && (func (String.get s x)))
        else acc 
    in 
    ft_check 0 true

let main () =
    print_string "test avec 0123456789 : ";
    if (ft_string_all is_digit "0123456789") then print_endline "true"
    else print_endline "false";
    print_string "test avec 01abc : ";
    if (ft_string_all is_digit "01abc") then print_endline "true"
    else print_endline "false"

let () = main ()
