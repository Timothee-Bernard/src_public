(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 15:16:29 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/20 15:24:54 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let t2 = Value.T2 
    and t3 = Value.T3
    and king = Value.King
    and t14 = Value.As in
    print_string "The Value of the first card is : ";
    print_string (Value.toString t2);
    print_string ", which means : ";
    print_string (Value.toStringVerbose t2);
    print_char '\n';
    print_string "If we want the next card : ";
    print_string (Value.toString (Value.next t2));
    print_char '\n';
    (*print_string "if we want the previous card : ";
    print_string (Value.toString (Value.previous t2));
    print_char '\n';*)

    print_string "The Value of the second card is : ";
    print_string (Value.toString t3);
    print_string ", which means : ";
    print_string (Value.toStringVerbose t3);
    print_char '\n';
    print_string "If we want the next card : ";
    print_string (Value.toString (Value.next t3));
    print_char '\n';
    print_string "if we want the previous card : ";
    print_string (Value.toString (Value.previous t3));
    print_char '\n';

    print_string "The Value of the third card is : ";
    print_string (Value.toString king);
    print_string ", which means : ";
    print_string (Value.toStringVerbose king);
    print_char '\n';
    print_string "If we want the next card : ";
    print_string (Value.toString (Value.next king));
    print_char '\n';
    print_string "if we want the previous card : ";
    print_string (Value.toString (Value.previous king));
    print_char '\n';

    print_string "The Value of the fourth card is : ";
    print_string (Value.toString t14);
    print_string ", which means : ";
    print_string (Value.toStringVerbose t14);
    print_char '\n';
    (*print_string "If we want the next card : ";
    print_string (Value.toString (Value.next t14));
    print_char '\n';*)
    print_string "if we want the previous card : ";
    print_string (Value.toString (Value.previous t14));
    print_char '\n'

let () = main ()
