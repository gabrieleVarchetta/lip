type card = Joker | Val of int;;

let win a b = match (a,b)  with
    (_, Joker) -> false
  | (Joker, _) -> true
  | (Val n1, Val n2) when (n1 < 1 || n1 > 10 || n2 < 1 || n2 > 10) -> failwith "Valori non ammessi"
  | (Val n1, Val n2) -> n1 > n2;;