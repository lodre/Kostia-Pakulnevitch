type s = Star|Braces of s;;
let rec f stars n k = match stars with Star->print_string (String.make (n*k) ' ');print_string "*\n"
                                      |Braces (s1)->print_string (String.make (n*k) ' ');print_string "(\n"
                                                      ;f s1 n (k+1)
                                                      ;print_string (String.make (n*k) ' ');print_string ")\n";;
let stars = Braces (Braces (Braces (Star)));;
let n = 3;;
f stars n 0;;