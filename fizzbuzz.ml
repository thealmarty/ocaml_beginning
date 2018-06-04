(* fizzbuzz.ml Fizzbuzz test in OCaml*)

(*checks whether the number x should be printed as one of the strings "fizz", "buzz", or "fizzbuzz" or the number itself.*)
let fizzbuzztest x = 
  if x mod 3 = 0 then 
    if x mod 5 = 0 then
      print_string ("fizzbuzz")
    else
        print_string ("fizz")
  else
    if x mod 5 = 0 then
      print_string ("buzz")
    else
      print_int x ; (*end of if statement*)
  print_newline () ;; (*end of definition of fizzbuzztest *)

(*count from n to 0 and print out the result of the function 'fizzbuzztest'*)
let rec counter_fizzbuzz n =
  match n with
    0 -> () 
    | _ -> counter_fizzbuzz (n - 1) ; (*end of first expression in match with _ *)
           fizzbuzztest n ;; (*end of definition of counter_fizzbuzz *)
           
counter_fizzbuzz 100 ;;

