(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 11:31:18 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/15 12:46:25 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_power x n =
    if n = 0 then 1
    else
        begin
            if n = 1 then x
            else
                x * (ft_power x (n - 1))
        end


let main () =
    print_int (ft_power 2 3);
    print_char '\n';
    print_int (ft_power 0 4);
    print_char '\n';
    print_int (ft_power 5 0);
    print_char '\n';
    print_int (ft_power 1 1);
    print_char '\n';
    print_int (ft_power 5 4);
    print_char '\n'

let () = main ()
