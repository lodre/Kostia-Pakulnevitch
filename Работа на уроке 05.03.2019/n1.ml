let n = 6;; 
let rec line n = print_string ((String.make ((n - 1) + (n mod 2)) '*')^"\n");;
let rec print_rows n = for i=0 to 3 do (
                         print_string "*";(for j=0 to n do print_string ((String.make 3 ' ')^"*") done);print_string "\n"
                       ) done;;
line (5*(n-1) + 1);;
for i=0 to n do (print_rows n;line (5*n)) done;;