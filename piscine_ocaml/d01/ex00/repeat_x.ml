(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 12:19:37 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/16 12:44:58 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_x n =
    if n < 0 then "Error"
    else
        begin
            let rec ft_repeat i s =
                if i = 0 then (s ^ "")
                else
                    ft_repeat (i - 1) (s ^ "x")
            in
            ft_repeat n ""
        end

let main () = 
    print_endline (repeat_x (-42));
    print_endline (repeat_x 0);
    print_endline (repeat_x 2);
    print_endline (repeat_x 12)

let () = main ()
