(* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
* File Name : balance.sml

* Purpose : Educational

* Creation Date : 02-06-2016

* Last Modified : Thu 02 Jun 2016 06:29:43 PM EEST

* Created By :  Stamatios Anoustis, Artemis Zografou

_._._._._._._._._._._._._._._._._._._._._.*)

(*open intInf*)

(*fun balance N W =*)

fun dec2tern 0 l = l
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
		  
	 
	
