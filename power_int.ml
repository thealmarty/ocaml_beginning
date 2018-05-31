(* power_int.ml Defines a function that take x and n as arguments to calculate the value of x to the power of n. x and n are of type int.*)

let rec power_int x n =
if n > 0 then
match n with
1 -> x
| _ -> x * power_int x (n - 1)
else
match n with
0 -> 1
| _ -> (1 / x) * power_int x (n + 1) ;;
let main () =
  let arg1 = int_of_string Sys.argv.(1) and arg2 = int_of_string Sys.argv.(2) in
  print_int (power_int arg1 arg2);
  print_newline ();
  exit 0;;
main ();;
