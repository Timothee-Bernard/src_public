class tama =
	object (self)
		val _health 	: int = 100
		val _energy 	: int = 100
		val _hygiene 	: int = 100
		val _happyness 	: int = 100
		val _alive		: bool = true
		val _saved		: bool = false
		val	_score		: int = 0

		method health 	 = _health
		method energy 	 = _energy
		method hygiene 	 = _hygiene
		method happyness = _happyness
		method alive	 = _alive
		method saved	 = _saved
		method score 	 = _score

		method load =
		try
			let chanel = open_in "save.itama" in
			let he = input_line chanel in
			let en = input_line chanel in
			let hy = input_line chanel in
			let ha = input_line chanel in
			let sc = input_line chanel in
			close_in chanel;
			{< _health = (int_of_string he); _energy = (int_of_string en); _hygiene = (int_of_string hy); _happyness = (int_of_string ha); _score = (int_of_string sc) >}
		with
		| _ -> {< _health = 100; _energy = 100; _hygiene = 100; _happyness = 100 >}

		method save =
		try
			let chanel = open_out "save.itama" in
				output_string chanel (string_of_int self#health);
				output_string chanel "\n";
				output_string chanel (string_of_int self#energy);
				output_string chanel "\n";
				output_string chanel (string_of_int self#hygiene);
				output_string chanel "\n";
				output_string chanel (string_of_int self#happyness);
				output_string chanel "\n";
				output_string chanel (string_of_int self#score);
				output_string chanel "\n";
			close_out chanel;
		with
		| _ -> ()

		method deplete	= 
		if self#health <= 1 then self#die
		else {< _health = (_health - 1); _energy = _energy; _hygiene = _hygiene; _happyness = _happyness; _score = (_score + 1) >}

		method eat 		= 
		if self#energy <= 10 || self#hygiene <= 20 then self#die
		else {< _health = if (self#health + 25) > 100 then 100
						else (_health + 25); _energy = (_energy - 10); _hygiene = (_hygiene - 20); _happyness = if (self#happyness + 5) > 100 then 100
																												else (_happyness + 5) >}

		method thunder 	= 
		if self#health <= 20 || self#happyness <= 20 then self#die
		else {< _health = (_health - 20); _energy = if (self#energy + 25) > 100 then 100
													else (_energy + 25); _hygiene = _hygiene; _happyness = (_happyness - 20) >}

		method bath 	= 
		if self#health <= 20 || self#energy <= 10 then self#die 
		else {< _health = (_health - 20); _energy = (_energy - 10); _hygiene = if (self#hygiene + 25) > 100 then 100
																				else (_hygiene + 25); _happyness = if (self#happyness + 5) > 100 then 100
																													else (_happyness + 5) >}

		method kill 	= 
		if self#health <= 20 || self#energy <= 10 then self#die 
		else {< _health = (_health - 20); _energy = (_energy - 10); _hygiene = _hygiene; _happyness = if (self#happyness + 20) > 100 then 100
																									else (_happyness + 20) >}

		method dance	=
		if self#health <= 20 || self#energy <= 10 || self#hygiene <= 15 then self#die
		else {< _health = (_health - 20); _energy = (_energy - 10); _hygiene = (_hygiene - 15); _happyness = if (self#happyness + 15) > 100 then 100
																												else (_happyness + 15) >}

		method sleep	=
		if self#health <= 20 then self#die
		else {< _health = (_health - 20); _energy = if (self#energy + 15) > 100 then 100
													else (_energy + 15); _happyness = if (self#happyness + 5) > 100 then 100
																					else (_happyness + 5) >}

		method die = if self#saved = false then 
												begin
													print_endline "GAME OVER";
													print_string "Votre tamagotchi a vécu ";
													print_int self#score;
													print_endline " secondes.";
													{< _health = 0; _energy = 0; _hygiene = 0; _happyness = 0; _alive = false; _saved = true; _score = 0 >}
												end
				else {< _health = 0; _energy = 0; _hygiene = 0; _happyness = 0; _alive = false >}

		method reload = {< _health = 100; _energy = 100; _hygiene = 100; _happyness = 100; _alive = true; _saved = false; _score = 0 >}
	end
