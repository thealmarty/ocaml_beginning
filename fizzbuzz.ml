(* fizzbuzz.ml Fizzbuzz test in OCaml*)

let main x =
  if x mod 3 = 0 then 
    if x mod 5 = 0 then
      print_string ("fizzbuzz")
    else
        print_string ("fizz")
  else
    if x mod 5 = 0 then
      print_string ("buzz")
    else
      print_int x;
  print_newline ();;
 
let rec counter n =
  match n with
    0 -> () 
    | _ -> counter (n - 1) ;
           main n ;;
           
counter 100 ;;

