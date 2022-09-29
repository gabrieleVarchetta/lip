let is_even x = (x mod 2 = 0);;

let is_correct x = (x >= 1 && x <= 5);;

let win a b = match (a, b) with
    (a, b) when not (is_correct a) &&  is_correct b -> -1
  | (a, b) when is_correct a && not (is_correct b) -> 1
  | (a, b) when not (is_correct a) && not (is_correct b) -> 0
  | (a, b) when is_even (a+b) -> 1
  | _ -> -1;;
