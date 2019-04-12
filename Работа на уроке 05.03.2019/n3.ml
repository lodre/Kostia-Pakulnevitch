type s = Star|Braces of s*s;;
let rec f stars n k = match stars with Star->print_string (String.make (n*k) ' ');print_string "*\n"
                                      |Braces (s1,s2)->print_string (String.make (n*k) ' ');print_string "(\n"
                                                      ;f s1 n (k+1);f s2 n (k+1)
                                                      ;print_string (String.make (n*k) ' ');print_string ")\n";;
let stars = Braces (Braces (Braces (Star,Star),Star),Braces (Star,Star));;
let n = 3;;
f stars n 0;;