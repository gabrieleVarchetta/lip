let is_posfrac (a,b) = if b == 0 then failwith"denominatore nullo" else a * b > 0;;

let sign n = if n < 0 then -1 else if n > 0 then 1 else 0;;

let compare_posfrac (a,b) (c,d) = 
  if not (is_posfrac (a,b) && is_posfrac(c,d)) then failwith"frazioni negative" 
  else sign (a*d - b*c);;

let compare_frac (a,b) (c,d) = sign (a*d - b*c);;