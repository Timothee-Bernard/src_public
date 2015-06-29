(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ;;;      ;;;;;;;;   *)
(*   molecules.ml                                       ;+;      ;+;    ;+;   *)
(*                                                    +;+ +;+         +;+     *)
(*   By; tibernar <tibernar@student.42.fr>          +#+  +;+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created; 2015/06/26 13;40;13 by tibernar          #+#    #+#             *)
(*   Updated; 2015/06/26 13;40;16 by tibernar         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let hydrogen = new Atoms.hydrogen
let carbon = new Atoms.carbon
let nitrogen = new Atoms.nitrogen
let oxygen = new Atoms.oxygen
let sodium = new Atoms.sodium
let phosphorus = new Atoms.phosphorus
let sulfur = new Atoms.sulfur
let fluorine = new Atoms.fluorine
let silver = new Atoms.silver
let gold = new Atoms.gold
let bismuth = new Atoms.bismuth
let thorium = new Atoms.thorium
let einsteinium = new Atoms.einsteinium
let mendelevium = new Atoms.mendelevium
let ununoctium = new Atoms.ununoctium

class water =
	object (self)
		inherit Molecule.molecule "Eau" [hydrogen;hydrogen;oxygen]
	end

class carbon_dioxyde =
	object (self)
		inherit Molecule.molecule "Dioxyde de Carbone" [carbon;oxygen;oxygen]
	end

class aspirin =
	object (self)
		inherit Molecule.molecule "Aspirine" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;oxygen;oxygen;oxygen;oxygen]
	end

class caffeine =
	object (self)
		inherit Molecule.molecule "Caféine" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		nitrogen;nitrogen;nitrogen;nitrogen;oxygen;oxygen]
	end

class prozac =
	object (self)
		inherit Molecule.molecule "Prozac" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;fluorine;fluorine;fluorine;nitrogen;oxygen]
	end

class viagra =
	object (self)
		inherit Molecule.molecule "Viagra (Sildénafil)" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;nitrogen;nitrogen;
		nitrogen;nitrogen;nitrogen;nitrogen;oxygen;oxygen;oxygen;oxygen;sulfur]
	end

class heroin =
	object (self)
		inherit Molecule.molecule "Heroïne" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;nitrogen;
		oxygen;oxygen;oxygen;oxygen;oxygen]
	end

class methamphetamine =
	object (self)
		inherit Molecule.molecule "Méthamphétamine" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;nitrogen]
	end

class methadone =
	object (self)
		inherit Molecule.molecule "Méthadone" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;nitrogen;oxygen]
	end

class buprenorphine =
	object (self)
		inherit Molecule.molecule "Subutex (Buprénorphine)" [carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;carbon;
		carbon;carbon;carbon;carbon;carbon;carbon;carbon;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;
		hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;hydrogen;nitrogen;
		oxygen;oxygen;oxygen;oxygen]
	end 