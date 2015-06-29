(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   gardening.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 16:03:09 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/19 16:03:45 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a tree = Nil | Node of 'a * 'a tree * 'a tree

let rec size = function
    | Nil -> 0
    | Node (_, l, r) -> 1 + size l + size r

let rec height = function
    | Nil -> (-1)
    | Node (_, l, r) -> 1 + max (height l) (height r)

let draw_square x y size =
    let x0 = (x - (size / 2)) and y0 = (y - (size / 2)) in
    Graphics.moveto x0 y0;
    Graphics.lineto x0 (y0 + size); Graphics.lineto (x0 + size) (y0 + size);
    Graphics.lineto (x0 + size) y0; Graphics.lineto x0 y0;
    Graphics.moveto x y

let draw_string_center x y str =
    let (sx, sy) = Graphics.text_size str in
    Graphics.moveto (x - sx / 2) (y - sy / 2);
    Graphics.draw_string str

let create_square x y size name =
    draw_square x y size;
    draw_string_center x y name

let draw_tree n =
      let rec ft_draw xstart ystart n acc = match n with
              | Nil -> create_square (xstart + 50) ystart 50 "Nil"
              | Node (v, l, r) ->
                  create_square (xstart + 50) ystart 50 v;
                  Graphics.moveto (xstart + 75) (ystart);
                  Graphics.lineto (xstart + acc + 140) (ystart + 105 + ((height l) * 30));
                  ft_draw (xstart + acc + 90) (ystart + 130 + ((height l) * 30)) l (acc + 20);
                  Graphics.moveto (xstart + 75) ystart;
                  Graphics.lineto (xstart + acc + 140) (ystart - 105 - ((height r) * 30));
                  ft_draw (xstart + acc + 90) (ystart - 130 - ((height r) * 30)) r (acc + 20)
      in ft_draw 0 576 n 0

let main () =
  ignore (Graphics.open_graph " 2048x1152");
    let tester = Node("test", (Node("test", Node("test", Nil, Nil),
      Node("test", Nil, Node("test", Node("test", Nil, Nil), Nil)))),
      Node("test", Nil, Nil)) in
    print_string "size: "; print_int (size tester); print_char '\n';
    print_string "height: "; print_int (height tester); print_char '\n';
    ignore (draw_tree tester);
  ignore (read_line ())

let () = main ()


(* let tester = Node("test", (Node("test", Node("test", Nil, Nil),
Node("test", Nil, Node("test", Node("test", Nil, Nil), Nil)))),
Node("test", Nil, Nil)) in *)

(* let tester = Node("test", Nil, Nil) in *)

(* let tester = Node("Node1", Node("Node2", Node("Node3", Nil, Nil),
Node("Node4", Nil, Nil)),Node("Node5", Nil, Node("Node6",
Node("Node7", Nil, Nil), Nil))) in *)

(* let t6 = Node ( "t6", Nil, Nil ) in
    let t5 = Node ( "t5", Nil, Nil ) in
    let t4 = Node ( "t4", Nil, Nil ) in
    let t3 = Node ( "t3", t4, t5 ) in
    let t2 = Node ( "t2", t3, Nil ) in
    let t1 = Node ( "t1", t6, Nil ) in
    let tester = Node ( "t0", t1, t2 ) in *)
