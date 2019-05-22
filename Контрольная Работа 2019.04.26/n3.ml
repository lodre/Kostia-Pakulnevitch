type t2 = B of t2 list;;    
let rec f1 l = match l with a::b->";"^(s_of_t a)^(f1 b)|[]->""
    and trees_list l = match l with a::b ->(s_of_t a)^(f1 b)|[]->""
    and s_of_t tree = match tree with B trees->"B["^(trees_list trees)^"]";;
let tree = B[B[B[];B[]];B[];B[]];;
print_string (s_of_t tree);;