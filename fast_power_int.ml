(* fast_power_int.ml Fast exponentiation.  Defines a function that take x and n as arguments to calculate the value of x to the power of n. x and n are of type int.*)

let rec fast_power_int x n =
  match n with
  0 -> 1
  | 1 -> x
  | _ -> if n mod 2 = 0 then
           fast_power_int x (n / 2) * fast_power_int x (n / 2)
         else
           x * fast_power_int x (n / 2) * fast_power_int x (n / 2);;

let main () =
  let arg1 = int_of_string Sys.argv.(1) and arg2 = int_of_string Sys.argv.(2) in
    print_int (fast_power_int arg1 arg2);
    print_newline ();
    exit 0;;

main ();;
