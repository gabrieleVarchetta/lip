let rec rand_list n b = match n with
    0 -> []
  | 1 -> [(Random.int b) + 1]
  | _ -> [(Random.int b)+1]@(rand_list (n-1) b);;