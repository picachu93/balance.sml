(* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
* File Name : balance.sml

* Purpose : Educational

* Creation Date : 02-06-2016

* Last Modified : Fri 01 Jul 2016 02:33:30 PM EEST

* Created By :  Stamatios Anoustis, Artemis Zografou

_._._._._._._._._._._._._._._._._._._._._.*)


(*open IntInf;*)

	fun dec2tern 0 l = l		(*split to ternary basis*)
  	| dec2tern W l = 
		let
			val remm  = W mod 3
			val quott = W div 3
		in
			if remm = 2 then 
			  dec2tern (quott+1) (~1::l)
			else if remm = 1 then dec2tern quott (1::l)
			else dec2tern quott (0::l)
		end

				  
	fun move_right [] ind lr = lr		(*construct the list of elems go to the right of plastigga*)
	  | move_right l ind lr = 
		let
		  val elem = hd l
		  val cell = ind + 1  	 
		in
		  if elem = 1 then 
		    move_right (tl l) cell (cell::lr)
		  else
		    move_right (tl l) cell lr
		end

	fun move_left [] ind lr = lr	(*construct the list of elems go to the left of plastigga*)
	  | move_left l ind lr = 
		let
		  val elem = hd l
		  val cell = ind + 1  	 
		in
		  if elem = ~1 then 
		    move_left (tl l) cell (cell::lr)
		  else
		    move_left (tl l) cell lr
		end

	 (*fun comp ((a :IntInf.int), (b :IntInf.int)) =
 		if a >= b then true
 		else false;*)

fun balance N W  =
  let
	val l = dec2tern W []
	val count = length l 
	val l1 = rev (move_right (rev l) 0 []);
	val l2 = rev (move_left (rev l) 0 []);

  in
	if N >= count then 
	  (l2, l1)
	else
	  ([], [])
  end		
