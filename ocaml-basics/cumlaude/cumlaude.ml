type grade = Val of int | CumLaude;;

let is_valid g = match g with
    (Val g) when g >= 18 && g <= 30 -> true
  | CumLaude -> true
  | _ -> false;;

let int_of_grade grade = match grade with
    CumLaude -> 32
  | (Val n) when is_valid grade -> n
  | _ -> failwith"invalid grade";;

let rec sum_list = function
    [] -> 0
  | h::[] -> int_of_grade h
  | h::t -> int_of_grade h + sum_list t;;

let avg grade_list = float(sum_list grade_list) /. float(List.length grade_list);;