(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 14:03:26 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/16 16:30:46 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome s =
    let original_length = String.length s in
    if original_length <= 1 then true
    else
        begin
            let rec ft_even_palindrome i j =
                if (i >= j) then
                    begin
                        if (String.get s i) = (String.get s j) then true
                        else false
                    end
                else
                    begin
                        if (String.get s i) = (String.get s j)
                        then ft_even_palindrome (i + 1) (j - 1)
                        else false
                    end
            in ft_even_palindrome 0 (original_length - 1)
        end

let main () =
    if (ft_is_palindrome "") then print_endline "chaine vide : true"
    else print_endline "chaine vide : false";
    if (ft_is_palindrome "1") then print_endline "1 : true"
    else print_endline "1 : false";
    if (ft_is_palindrome "ac") then print_endline "ac : true"
    else print_endline "ac : false";
    if (ft_is_palindrome "aa") then print_endline "aa : true"
    else print_endline "aa : false";
    if (ft_is_palindrome "aac") then print_endline "aac : true"
    else print_endline "aac : false";
    if (ft_is_palindrome "aaa") then print_endline "aaa : true"
    else print_endline "aaa : false";
    if (ft_is_palindrome "aaaa") then print_endline "aaaa : true"
    else print_endline "aaaa : false";
    if (ft_is_palindrome "a12a") then print_endline "a12a : true"
    else print_endline "a12a : false";
    if (ft_is_palindrome "aaaac") then print_endline "aaaac : true"
    else print_endline "aaaac : false";
    if (ft_is_palindrome "aaaaa") then print_endline "aaaaa : true"
    else print_endline "aaaaa : false";
    if (ft_is_palindrome "aaaaaa") then print_endline "aaaaaa : true"
    else print_endline "aaaaaa : false";
    if (ft_is_palindrome "aaaa12") then print_endline "aaaa12 : true"
    else print_endline "aaaa12 : false"

let () = main ()
