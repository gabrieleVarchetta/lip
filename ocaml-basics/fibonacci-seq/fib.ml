let rec calc_fib n = match n with 
    2 -> 1
  | 3 -> 1
  | _ -> calc_fib(n-1) + calc_fib(n-2);;

let rec fib_seq n = match n with
    1 -> 0::[]
  | _ -> fib_seq (n-1)@[calc_fib n];;