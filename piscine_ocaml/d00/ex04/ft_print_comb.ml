(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 14:14:47 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/15 15:01:31 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
    let rec ft_comb x y z =
    	if z <= 9 then
            begin
                print_int x;
                print_int y;
                print_int z;
                if x = 7 then
                    print_string "\n"
                else
                    begin
                        print_string ", "; 
                        ft_comb x y (z + 1)
                    end
            end
        else
            if y <= (8) then
                ft_comb x (y + 1) (y + 2)
            else if x <= (7) then
                ft_comb (x + 1) (x + 2) (x + 3)
    in
    ft_comb 0 1 2   


let main () =
    ft_print_comb ()

let () = main ()
