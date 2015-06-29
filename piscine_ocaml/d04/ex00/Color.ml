(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Color.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 14:29:42 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/20 15:14:45 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type t = Spade | Heart | Diamond | Club

let all = [Spade;Heart;Diamond;Club]

let toString = function
    | Spade     -> "S"
    | Heart     -> "H"
    | Diamond   -> "D"
    | Club      -> "C"
    
let toStringVerbose = function
    | Spade     -> "Spade"
    | Heart     -> "Heart"
    | Diamond   -> "Diamond"
    | Club      -> "Club"
