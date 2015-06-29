(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   crossover.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/18 20:42:10 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/18 20:53:25 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_print_list lst = match lst with
   | [] -> print_char '\n'
   | head::queue -> print_int head; ft_print_list queue

let rec ft_print_list_string lst = match lst with
   | [] -> print_char '\n'
   | head::queue -> print_string head; ft_print_list_string queue

let rec ft_rev_list lst res = match lst with
        | [] -> res
        | head :: queue -> ft_rev_list queue (head::res)

let crossover lst1 lst2 =
    let rec overcross liste1 liste2 lister = match liste1 with
         | [] -> []
         | hd :: tl ->
             begin
              let rec loop elem l2 _tl retl = match l2 with
                | [] -> retl
                | head :: tail -> if (head = elem) then overcross _tl l2 (head :: retl)
                                    else loop elem tail _tl retl
              in
              loop hd liste2 tl lister
             end
    in
    overcross lst1 lst2 []

let main () =
ft_print_list (ft_rev_list (crossover [1;2;3;4;2;2;2;1;1;1] [1;1;1;1;2;3;2;2;2;1;1;1]) []);
ft_print_list_string (ft_rev_list (crossover ["tutu";"toto";"toto";"toto";"toto";"toto";"toto";"toto";"toto";"toto";"toto";"tutu"] ["tutu";"tata"]) [])

let () =
    main ()