let rec min_fun_calc f a b = min (f a) (min_fun_calc f (a+1) b);;

let minfun f a b = match (a,b) with
    (a,b) when a >= b -> None
  | _ -> Some(min_fun_calc f a b);;
