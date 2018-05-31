(* power_float.ml Defines a function that take x and n as arguments to calculate the value of x to the power of n. x and n are of type float.*)

let rec power_float x n =
if n > 0. then
match n with
1. -> x
| _ -> x *. power_float x (n -. 1.)
else
match n with
0. -> 1.
| _ -> (1. /. x) *. power_float x (n +. 1.) ;;
let main () =
  let arg1 = float_of_string Sys.argv.(1) and arg2 = float_of_string Sys.argv.(2) in
  print_float (power_float arg1 arg2);
  print_newline ();
  exit 0;;
main ();;
