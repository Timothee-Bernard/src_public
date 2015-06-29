(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   arithmetic.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/27 17:30:31 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/27 17:30:34 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type MONOID =
	sig
		type element
		val zero1 : element
		val zero2 : element

		val mul : element -> element -> element
		val add : element -> element -> element
		val div : element -> element -> element
		val sub : element -> element -> element
	end

module INT =
	struct
		type element = int
		let zero1 : element = 0
		let zero2 : element = 1

		let mul : element -> element -> element = fun (x:element) (y:element) -> x * y
		let add : element -> element -> element = fun (x:element) (y:element) -> x + y
		let div : element -> element -> element = fun (x:element) (y:element) ->
			if y = zero1 then zero1
			else x / y
		let sub : element -> element -> element = fun (x:element) (y:element) -> x - y
	end

module FLOAT =
	struct
		type element = float
		let zero1 : element = 0.
		let zero2 : element = 1.

		let mul : element -> element -> element = fun (x:element) (y:element) -> x *. y
		let add : element -> element -> element = fun (x:element) (y:element) -> x +. y
		let div : element -> element -> element = fun (x:element) (y:element) ->
			if y = zero1 then zero1
			else x /. y
		let sub : element -> element -> element = fun (x:element) (y:element) -> x -. y
	end

module Calc =
	functor (M : MONOID) ->
		struct
			let add 	: M.element -> M.element -> M.element 	= fun x y -> M.add x y
			let sub 	: M.element -> M.element -> M.element 	= fun x y -> M.sub x y
			let mul 	: M.element -> M.element -> M.element 	= fun x y -> M.mul x y
			let div 	: M.element -> M.element -> M.element 	= fun x y -> M.div x y
			let power : M.element -> int -> M.element = fun a b -> 
				let rec loop acc i =
					if i <> b then loop (M.add acc a) (i + 1)
					else acc
				in loop M.zero1 0
			let fact : M.element -> M.element = fun a -> 
				let rec loop b =
					if b <= M.zero2 then M.zero2
					else M.mul b (loop (M.sub b M.zero2)) 
			in loop a
		end

module Calc_int = Calc(INT)
module Calc_float = Calc(FLOAT)

let () =
	print_endline (string_of_int (Calc_int.power 3 3)) ;
	print_endline (string_of_float (Calc_float.power 3.0 3)) ;
	print_endline (string_of_int (Calc_int.mul (Calc_int.add 20 1) 2)) ;
	print_endline (string_of_float (Calc_float.mul (Calc_float.add 20.0 1.0) 2.0)) ;
	print_endline (string_of_int (Calc_int.sub (Calc_int.div 88 2) 2)) ;
	print_endline (string_of_float (Calc_float.sub (Calc_float.div 88.0 2.0) 2.0)) ;
	print_endline (string_of_float (Calc_float.fact 5.1)) ;
	print_endline (string_of_int (Calc_int.fact 5)) ;
	print_endline (string_of_int (Calc_int.mul (Calc_int.add 40 5) 3)) ;
	print_endline (string_of_float (Calc_float.mul (Calc_float.add 40.0 5.0) 3.0)) ;