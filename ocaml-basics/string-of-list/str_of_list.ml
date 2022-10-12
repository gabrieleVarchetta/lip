let rec nums_to_string l = match l with
    [] -> ""
  | h::[] -> string_of_int h
  | h::t -> string_of_int h ^ ";" ^ nums_to_string t;;

let string_of_list l = "[" ^ nums_to_string l ^ "]";;