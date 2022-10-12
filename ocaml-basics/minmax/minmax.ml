let rec min_fun_calc f a b = if a = b then f a else min (f a) (min_fun_calc f (a+1) b);;

let rec max_fun_calc f a b = if a = b then f a else max (f a) (max_fun_calc f (a+1) b);;

let minmax f a b = match (a,b) with
    (a,b) when a > b -> failwith"wrong range"
  | _ -> (min_fun_calc f a b, max_fun_calc f a b);;
