(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   atoms.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: tibernar <tibernar@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 16:44:24 by tibernar          #+#    #+#             *)
(*   Updated: 2015/06/25 16:44:26 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class hydrogen =
	object (self)
		inherit Atom.atom "Hydrogen" "H" 1
	end

class carbon =
	object (self)
		inherit Atom.atom "Carbon" "C" 6 
	end

class nitrogen =
	object (self)
		inherit Atom.atom "Nitrogen" "N" 7 
	end

class oxygen =
	object (self)
		inherit Atom.atom "Oxygen" "O" 8 
	end

class fluorine =
	object (self)
		inherit Atom.atom "Fluorine" "F" 9 
	end

class sodium =
	object (self)
		inherit Atom.atom "Sodium" "Na" 11 
	end

class phosphorus =
	object (self)
		inherit Atom.atom "Phosphorus" "P" 15 
	end

class sulfur =
	object (self)
		inherit Atom.atom "Sulfur" "S" 16 
	end

class silver =
	object (self)
		inherit Atom.atom "Silver" "Ag" 47 
	end

class gold = 
    object (self)
        inherit Atom.atom "Gold" "Au" 79 
    end

class bismuth =
	object (self)
		inherit Atom.atom "Bismuth" "Bi" 83 
	end

class thorium =
	object (self)
		inherit Atom.atom "Thorium" "Th" 90 
	end

class einsteinium =
	object (self)
		inherit Atom.atom "Einsteinium" "Es" 99 
	end

class mendelevium =
	object (self)
		inherit Atom.atom "Mendelevium" "Md" 101 
	end

class ununoctium =
	object (self)
		inherit Atom.atom "Ununoctium" "Uuo" 118 
	end
