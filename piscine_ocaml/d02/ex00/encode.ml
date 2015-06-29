(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   encode.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 13:54:08 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/17 16:33:54 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_tuple (val1, val2) =
    print_int val1;
    print_char val2

let rec ft_print_list lst = match lst with
   | [] -> print_char '\n'
   | head::queue ->    begin
                           ft_print_tuple head;
                           ft_print_list queue
                       end

let ft_print_tuple_string (val1, val2) =
    print_int val1;
    print_string val2

let rec ft_print_list_string lst = match lst with
   | [] -> print_char '\n'
   | head::queue ->    begin
                           ft_print_tuple_string head;
                           ft_print_list_string queue
                       end

let rec ft_rev_list lst res = match lst with
        | head :: queue -> ft_rev_list queue (head::res)
        | [] -> res

let encode l =
    let rec loop lst acc tup = match lst with
            | queue :: [] -> ((acc + 1, queue) :: tup)
            | head :: (queue :: _ as next) -> if (head = queue) then loop next (acc + 1) tup
                                                else loop next 0 ((acc + 1, head) :: tup)
            | [] -> tup
        in loop l 0 []

let main () =
    ft_print_list (ft_rev_list (encode []) []);
    ft_print_list (ft_rev_list (encode ['a'; 'a'; 'a'; 'b'; 'b'; 'b']) []);
    ft_print_list (ft_rev_list (encode ['a'; 'a'; 'a'; 'b'; 'b'; 'b' ; 'a'; 'a'; 'a'; 'b'; 'b'; 'b']) []);
    ft_print_list (ft_rev_list (encode ['1' ; '1' ; '1' ; '1' ; '1' ; '1' ; '1' ; '1' ; '1' ; '2' ; '2' ; '2' ; '2' ; '2' ; '2' ; '2' ; '2' ; '2']) []);
    ft_print_list_string (ft_rev_list (encode ["born" ; "code"; "code"]) []);
    ft_print_list_string (ft_rev_list (encode ["haches" ; "haches" ; "haches" ; "haches" ; "haches" ; "epees"; "epees"; "epees"; "arc"]) [])

let () = main ()
