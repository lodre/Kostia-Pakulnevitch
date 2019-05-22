type s = Star|Braces of s*s;;
let rec print_line n k = if k>0 then (print_string (String.make ((n+1)*k) ' '));;
let rec f stars n k = match stars with Star->print_line n k;print_string ".\n"
                                      |Braces (s1,s2)->print_line n k;print_string "*\n"
                                                      ;f s1 n (k+1);f s2 n (k+1);;
let stars = Braces (Braces (Braces (Star,Star),Star),Braces (Star,Star));;
f stars 3 0;;