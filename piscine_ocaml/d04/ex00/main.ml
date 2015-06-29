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
    let firstCard = Color.Club 
    and secondCard = Color.Diamond
    and thirdCard = Color.Heart
    and fourthCard = Color.Spade in
    print_string "The color of the first card is : ";
    print_string (Color.toString firstCard);
    print_string ", which means : ";
    print_string (Color.toStringVerbose firstCard);
    print_char '\n';
    print_string "The color of the second card is : ";
    print_string (Color.toString secondCard);
    print_string ", which means : ";
    print_string (Color.toStringVerbose secondCard);
    print_char '\n';
    print_string "The color of the third card is : ";
    print_string (Color.toString thirdCard);
    print_string ", which means : ";
    print_string (Color.toStringVerbose thirdCard);
    print_char '\n';
    print_string "The color of the fourth card is : ";
    print_string (Color.toString fourthCard);
    print_string ", which means : ";
    print_string (Color.toStringVerbose fourthCard);
    print_char '\n'

let () = main ()
