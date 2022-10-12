let extract i l = if i < 0 || i >= List.length l then failwith"index out of bounds"
else (List.nth l i, List.filter (fun e -> e != List.nth l i) l);;