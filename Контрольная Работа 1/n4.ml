type t2 = B of t2 list;;                                 
let rec map f l = match l with a::b->(f a);(map f b)|[]->();;
let rec print_line n k = if k>0 then (print_string (String.make ((n+1)*k) ' '));;
let rec f tree n k = match tree with B t->print_line n k;print_string "*\n";map (fun t -> f t n (k+1)) t;;
let tree = B[B[B[];B[]];B[];B[]];;
f tree 3 0;;