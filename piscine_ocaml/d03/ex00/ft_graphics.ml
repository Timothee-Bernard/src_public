(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_graphics.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 12:57:14 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/19 13:04:18 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a tree = Nil | Node of 'a * 'a tree * 'a tree

let draw_square x y size =
    let x0 = (x - (size / 2)) and y0 = (y - (size / 2)) in
    Graphics.moveto x0 y0;
    Graphics.lineto x0 (y0 + size); Graphics.lineto (x0 + size) (y0 + size);
    Graphics.lineto (x0 + size) y0; Graphics.lineto x0 y0;
    Graphics.moveto x y

let create_square x y size name =
    draw_square x y size;
    Graphics.moveto (x - (size / 4)) (y - (size / 4));
    Graphics.draw_string name

let draw_tree_node n =
      let ft_draw xstart ystart n = match n with
              | Nil -> create_square (xstart + 50) ystart 40 "Nil"
              | Node (v, _, _) ->
                  create_square (xstart + 50) ystart 40 v;
                  Graphics.moveto (xstart +70) ystart;
                  Graphics.lineto (xstart + 120) (ystart + 30);
                  Graphics.moveto (xstart +70) ystart;
                  Graphics.lineto (xstart + 120) (ystart - 30);
                  create_square (xstart + 140) (ystart +30) 40 "Nil";
                  create_square (xstart + 140) (ystart -30) 40 "Nil"

      in ft_draw 0 240 n

let main () =
    ignore (Graphics.open_graph " 640x480");
    let n = Node ("42", Nil, Nil) in
      ignore (draw_tree_node n);
    ignore (read_line ())


let () = main ()
