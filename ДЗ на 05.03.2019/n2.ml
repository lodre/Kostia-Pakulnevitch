let rec f n = print_string (String.make n '*');print_string "\n";for i=0 to n-3 do print_string ("*"^(String.make (n-2) ' ')^"*\n") done;print_string (String.make n '*');print_string "\n";;
let n = 4;;
f n;;