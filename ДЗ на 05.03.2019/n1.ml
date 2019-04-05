let rec f1 i = if i>0 then ((print_string ((String.make i ' ')^"*\n"));(f1 (i-1))) else print_string "*";;
let rec f2 n i = if i>0 then (print_string ((String.make (n-i) ' ')^"*\n");(f2 n (i-1))) else ((print_string ((String.make (n-i) ' ')^"*\n"));(f1 (n-1)));;
let n = 5;;
f2 n n;;