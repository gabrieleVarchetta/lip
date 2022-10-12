let rec contains l n = match l with
    [] -> false
  | h::[] -> h = n
  | h::t -> if h = n then true else contains t n;;

let rec dup l = match l with
    [] -> false
  | h::[] -> false
  | h::t -> contains t h;;