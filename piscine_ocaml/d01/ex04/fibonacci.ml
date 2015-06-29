(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 18:14:00 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/16 18:39:27 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let fibonacci n =
    if n < 0 then (-1)
    else
        let rec recfib n a b =
            if n = 0 then a
            else recfib (n - 1) b (a + b)
        in
            recfib n 0 1

let main () = 
    print_int (fibonacci (-42));
    print_char '\n';
    print_int (fibonacci 0);
    print_char '\n';
    print_int (fibonacci 1);
    print_char '\n';
    print_int (fibonacci 3);
    print_char '\n';
    print_int (fibonacci 6);
    print_char '\n'

let () = main ()
