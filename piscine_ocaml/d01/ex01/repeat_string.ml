(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 12:46:51 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/16 13:59:07 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_string ?(str = "x") n =
    if n < 0 then "Error"
    else if n = 0 then ""
    else
        begin
            let rec ft_repeat s i = 
                if i = 1 then (s ^ "")
                else
                    ft_repeat (s ^ str) (i - 1)
                in
            ft_repeat str n
        end

let main () =
    print_endline (repeat_string (-1));
    print_endline (repeat_string 0);
    print_endline (repeat_string ~str:"born2code" (-1));
    print_endline (repeat_string ~str:"sadirac" (1));
    print_endline (repeat_string ~str:"malkovitch "(3));
    print_endline (repeat_string 12);
    print_endline (repeat_string ~str:"a" 12)

let () = main ()
