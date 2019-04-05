let rec line n = print_string ((String.make ((n - 1) + (n mod 2)) '*')^"\n");;
let rec lines n i =for a=0 to i do print_string ((String.make ((n-1)/2) ' ')^"*"^(String.make (n/2) ' ')^"\n") done;;
let rec f n = line n;lines n ((n/2)-1);line n;lines n ((n/2)-1);line n;;
let n = 9;;
f n;;