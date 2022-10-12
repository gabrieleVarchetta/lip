let rec num_to_list n = if n mod 10 = n then n::[] else (num_to_list (n / 10))@[n mod 10];; 
let rec find n l = match l with
    [] -> failwith"not found"
  | h::t -> if h = n then 0 else 1 + find n t;;

let alt_even num = 
  let l = List.rev(num_to_list num) in 
  List.fold_right 
    (fun a b -> if (find a l) mod 2 = 0 then (a mod 2 = 0) && b else (a mod 2 = 1) && b) 
    l true;;