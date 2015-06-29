(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 10:43:14 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/15 11:27:03 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_countdown nb =
    if nb <= 0 then
        begin
            print_int 0;
            print_char '\n'
        end
    else
       begin
            print_int nb;  
            print_char '\n';
            ft_countdown (nb - 1)
       end

let main () = 
    ft_countdown (-5);
    print_char '\n';
    ft_countdown 6;
    print_char '\n';
    ft_countdown 0


let () = main ()
