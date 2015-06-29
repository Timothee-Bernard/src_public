let locale = GtkMain.Main.init ()

let tamago = ref new Tama.tama

let print_state () =
	prerr_endline (("health : " ^ (string_of_int !tamago#health)) ^ ", energy : " ^ (string_of_int !tamago#energy) ^ ", hygiene : " ^ (string_of_int !tamago#hygiene) ^ ", happyness " ^ (string_of_int !tamago#happyness))

let main () =
	let window = GWindow.window ~width:500 ~height:600
								~title:"Instant Tama" () in
	let vbox = GPack.vbox ~packing: window#add () in
	ignore (window#connect#destroy ~callback: GMain.Main.quit);

	(* Menu bar *)
	let menubar = GMenu.menu_bar ~packing:vbox#pack () in
	let factory = new GMenu.factory menubar in
	let accel_group = factory#accel_group in
	let file_menu = factory#add_submenu "Options" in
	let health_menu = factory#add_submenu "Feed" in
	let hygiene_menu = factory#add_submenu "hygiene" in
	let energy_menu = factory#add_submenu "energy" in
	let happyness_menu = factory#add_submenu "happyness" in

	(* Options menu *)
	let options = new GMenu.factory file_menu ~accel_group in
		ignore (options#add_item "Save" ~key:GdkKeysyms._S ~callback: (fun () -> ignore(!tamago#save)));
		ignore (options#add_item "Load" ~key:GdkKeysyms._L ~callback:(fun () -> ignore(tamago := !tamago#load)));
		ignore (options#add_item "Reload" ~key:GdkKeysyms._R ~callback:(fun () -> ignore(tamago := !tamago#reload)));
		ignore (options#add_item "Quit" ~key:GdkKeysyms._Q ~callback: GMain.Main.quit);

	(* health menu *)
	let health = new GMenu.factory health_menu ~accel_group in
		ignore (health#add_item "eat" ~key:GdkKeysyms._E ~callback: (fun () -> ignore(tamago := !tamago#eat)));

	(* hygiene menu *)
	let hygiene = new GMenu.factory hygiene_menu ~accel_group in
		ignore (hygiene#add_item "bath" ~key:GdkKeysyms._B ~callback: (fun () -> ignore(tamago := !tamago#bath)));
	(* energy menu *)
	let energy = new GMenu.factory energy_menu ~accel_group in
		ignore (energy#add_item "thunder" ~key:GdkKeysyms._T ~callback: (fun () -> ignore(tamago := !tamago#thunder)));
		ignore (energy#add_item "sleep" ~key:GdkKeysyms._P ~callback: (fun () -> ignore(tamago := !tamago#sleep)));
		
	(* happyness menu *)
	let happyness = new GMenu.factory happyness_menu ~accel_group in
		ignore (happyness#add_item "kill" ~key:GdkKeysyms._K ~callback: (fun () -> ignore(tamago := !tamago#kill)));
		ignore (happyness#add_item "dance" ~key:GdkKeysyms._D ~callback: (fun () -> ignore(tamago := !tamago#dance)));

	(* Main image *)
	let testimage =
   	let image = GMisc.image ~pixbuf: (GdkPixbuf.from_file_at_size "assets/pika.png" 500 500)  ~packing:vbox#add () in
   	image in

	let progress_bars =
    let align1 = GBin.alignment ~xalign:0.5 ~yalign:0.1
      ~xscale:0.0 ~yscale:0.0 ~packing:vbox#add ()
    in
    let pbar1 = GRange.progress_bar ~packing:align1#add () in
      let align2 = GBin.alignment ~xalign:0.5 ~yalign:0.1
      ~xscale:0.0 ~yscale:0.0 ~packing:vbox#add ()
    in
    let pbar2 = GRange.progress_bar ~packing:align2#add () in
     let align3 = GBin.alignment ~xalign:0.5 ~yalign:0.1
      ~xscale:0.0 ~yscale:0.0 ~packing:vbox#add ()
    in
    let pbar3 = GRange.progress_bar ~packing:align3#add () in
     let align4 = GBin.alignment ~xalign:0.5 ~yalign:0.1
      ~xscale:0.0 ~yscale:0.0 ~packing:vbox#add ()
    in
    let pbar4 = GRange.progress_bar ~packing:align4#add () in
    pbar1#set_text "health";
    pbar2#set_text "hygiene";
    pbar3#set_text "energy";
    pbar4#set_text "happyness";
    (pbar1, pbar2, pbar3, pbar4) in

	let updatePbars () = (match progress_bars with
    | (pbar1, pbar2, pbar3, pbar4) ->
      pbar1#set_fraction (float_of_int((!tamago)#health) /. 100.0);
      pbar2#set_fraction (float_of_int((!tamago)#hygiene)  /. 100.0);
      pbar3#set_fraction (float_of_int((!tamago)#energy) /. 100.0);
      pbar4#set_fraction (float_of_int((!tamago)#happyness)  /. 100.0);
      pbar1#set_text ("health : " ^ (string_of_int ((!tamago)#health)));
      pbar2#set_text ("hygiene : " ^ (string_of_int ((!tamago)#hygiene)));
      pbar3#set_text ("energy : " ^ (string_of_int ((!tamago)#energy)));
      pbar4#set_text ("happyness : " ^ (string_of_int ((!tamago)#happyness)));
    );
    true in

    (* Buttons *)
	let button1 = GButton.button	~label:"EAT"
									~packing:vbox#add () in
	ignore (button1#connect#clicked ~callback: (fun () -> ignore(tamago := !tamago#eat)));
	let button2 = GButton.button	~label:"BATH"
									~packing:vbox#add () in
	ignore (button2#connect#clicked ~callback: (fun () -> ignore(tamago := !tamago#bath)));
	let button3 = GButton.button	~label:"THUNDER"
									~packing:vbox#add () in
	ignore (button3#connect#clicked ~callback: (fun () -> ignore(tamago := !tamago#thunder)));
	let button4 = GButton.button	~label:"KILL"
									~packing:vbox#add () in
	ignore (button4#connect#clicked ~callback: (fun () -> ignore(tamago := !tamago#kill)));
	let button5 = GButton.button	~label:"DANCE"
									~packing:vbox#add () in
	ignore (button5#connect#clicked ~callback: (fun () -> ignore(tamago := !tamago#dance)));
	let button6 = GButton.button	~label:"SLEEP"
									~packing:vbox#add () in
	ignore (button6#connect#clicked ~callback: (fun () -> ignore(tamago := !tamago#sleep)));

	(* Update tamago *)
	ignore (GMain.Timeout.add ~ms:1000 ~callback:(fun () -> ignore(tamago := !tamago#deplete); ignore(updatePbars()); true));

	(* Display the windows and enter Gtk+ main loop *)
	window#add_accel_group accel_group;

	window#show ();
	ignore (testimage);
	GMain.Main.main ()

let () = main ()
