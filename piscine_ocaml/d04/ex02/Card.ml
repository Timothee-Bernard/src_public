(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Card.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 17:15:42 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/20 20:51:15 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Color =
    struct
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
    end


module Value =
    struct
        type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As
        
        let all = [T2;T3;T4;T5;T6;T7;T8;T9;T10;Jack;Queen;King;As]
        
        let toInt = function
            | T2    ->  1
            | T3    ->  2
            | T4    ->  3
            | T5    ->  4
            | T6    ->  5
            | T7    ->  6
            | T8    ->  7
            | T9    ->  8
            | T10   ->  9
            | Jack  ->  10
            | Queen ->  11
            | King  ->  12
            | As    ->  13
        
        let toString = function
            | T2    ->  "2"
            | T3    ->  "3"
            | T4    ->  "4"
            | T5    ->  "5"
            | T6    ->  "6"
            | T7    ->  "7"
            | T8    ->  "8"
            | T9    ->  "9"
            | T10   ->  "10"
            | Jack  ->  "J"
            | Queen ->  "Q"
            | King  ->  "K"
            | As    ->  "A"
        
        let toStringVerbose = function
            | T2    ->  "2"
            | T3    ->  "3"
            | T4    ->  "4"
            | T5    ->  "5"
            | T6    ->  "6"
            | T7    ->  "7"
            | T8    ->  "8"
            | T9    ->  "9"
            | T10   ->  "10"
            | Jack  ->  "Jack"
            | Queen ->  "Queen"
            | King  ->  "King"
            | As    ->  "As"
        
        let next = function
            | T2    ->  T3
            | T3    ->  T4
            | T4    ->  T5
            | T5    ->  T6
            | T6    ->  T7
            | T7    ->  T8
            | T8    ->  T9
            | T9    ->  T10
            | T10   ->  Jack
            | Jack  ->  Queen
            | Queen ->  King
            | King  ->  As
            | As    ->  invalid_arg "Cannot go beyond As"
            
        let previous = function
            | T2    ->  invalid_arg "Cannot go before T2"
            | T3    ->  T2
            | T4    ->  T3
            | T5    ->  T4
            | T6    ->  T5
            | T7    ->  T6
            | T8    ->  T7
            | T9    ->  T8
            | T10   ->  T9
            | Jack  ->  T10
            | Queen ->  Jack
            | King  ->  Queen
            | As    ->  King
    end


type t = Card of Value.t * Color.t

let newCard v c = Card (v, c)
    
let allSpades   = [ Card (Value.T2,     Color.Spade) ;
                   Card (Value.T3,      Color.Spade) ;
                   Card (Value.T4,      Color.Spade) ;
                   Card (Value.T5,      Color.Spade) ;
                   Card (Value.T6,      Color.Spade) ;
                   Card (Value.T7,      Color.Spade) ;
                   Card (Value.T8,      Color.Spade) ;
                   Card (Value.T9,      Color.Spade) ;
                   Card (Value.T10,     Color.Spade) ;
                   Card (Value.Jack,    Color.Spade) ;
                   Card (Value.Queen,   Color.Spade) ;
                   Card (Value.King,    Color.Spade) ;
                   Card (Value.As,      Color.Spade) ; ]

let allHearts   = [ Card (Value.T2,     Color.Heart) ;
                   Card (Value.T3,      Color.Heart) ;
                   Card (Value.T4,      Color.Heart) ;
                   Card (Value.T5,      Color.Heart) ;
                   Card (Value.T6,      Color.Heart) ;
                   Card (Value.T7,      Color.Heart) ;
                   Card (Value.T8,      Color.Heart) ;
                   Card (Value.T9,      Color.Heart) ;
                   Card (Value.T10,     Color.Heart) ;
                   Card (Value.Jack,    Color.Heart) ;
                   Card (Value.Queen,   Color.Heart) ;
                   Card (Value.King,    Color.Heart) ;
                   Card (Value.As,      Color.Heart) ; ]

let allDiamonds = [ Card (Value.T2,     Color.Diamond) ;
                   Card (Value.T3,      Color.Diamond) ;
                   Card (Value.T4,      Color.Diamond) ;
                   Card (Value.T5,      Color.Diamond) ;
                   Card (Value.T6,      Color.Diamond) ;
                   Card (Value.T7,      Color.Diamond) ;
                   Card (Value.T8,      Color.Diamond) ;
                   Card (Value.T9,      Color.Diamond) ;
                   Card (Value.T10,     Color.Diamond) ;
                   Card (Value.Jack,    Color.Diamond) ;
                   Card (Value.Queen,   Color.Diamond) ;
                   Card (Value.King,    Color.Diamond) ;
                   Card (Value.As,      Color.Diamond) ; ]

let allClubs    = [ Card (Value.T2,     Color.Club) ;
                   Card (Value.T3,      Color.Club) ;
                   Card (Value.T4,      Color.Club) ;
                   Card (Value.T5,      Color.Club) ;
                   Card (Value.T6,      Color.Club) ;
                   Card (Value.T7,      Color.Club) ;
                   Card (Value.T8,      Color.Club) ;
                   Card (Value.T9,      Color.Club) ;
                   Card (Value.T10,     Color.Club) ;
                   Card (Value.Jack,    Color.Club) ;
                   Card (Value.Queen,   Color.Club) ;
                   Card (Value.King,    Color.Club) ;
                   Card (Value.As,      Color.Club) ; ]

let all         = allSpades @ allHearts @ allDiamonds @ allClubs

let getValue    = function
    | Card (v, c)    -> v

let getColor    = function
    | Card (v, c)    -> c

let toString t =
    (Value.toString (getValue t) ^ Color.toString (getColor t))

let toStringVerbose t =
    ("Card(" ^ Value.toStringVerbose (getValue t) ^ ", " ^ (Color.toStringVerbose (getColor t)) ^ ")")

let compare c1 c2 =
    if c1 = c2 then 0
    else if (getValue c1) < (getValue c2) then ((Value.toInt (getValue c1)) - (Value.toInt (getValue c2)))
    else ((Value.toInt (getValue c2)) - (Value.toInt (getValue c1)))

let max c1 c2   =
    if (getValue c1) = (getValue c2) then c1
    else if (getValue c1) < (getValue c2) then c2
    else c1

let min c1 c2   =
    if (getValue c1) = (getValue c2) then c1
    else if (getValue c1) > (getValue c2) then c2
    else c1

let best        = function
    | []        -> invalid_arg "Best function ERROR : empty list"
    | hd :: tl  -> List.fold_left max hd tl 

let isOf ca co  =
    if (getColor ca) = co then true
    else false

let isSpade c   =
    if (getColor c) = Color.Spade then true
    else false

let isHeart c   = 
    if (getColor c) = Color.Heart then true
    else false
    
let isDiamond c = 
    if (getColor c) = Color.Diamond then true
    else false
    
let isClub c    = 
    if (getColor c) = Color.Club then true
    else false
    
