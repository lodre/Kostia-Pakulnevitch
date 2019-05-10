type tree = Leaf | Node of tree * tree * int;;
let rec make_bambuk n p = if p>0 then Node (Leaf,(make_bambuk n (p-1)),p) else Leaf;; 
let n = 3;;
let t = make_bambuk n n;;
let rec s_of_t t = match t with Leaf->"leaf"
                               |Node (t1,t2,i)->"Node ("^(s_of_t t1)^","^(s_of_t t2)^","^(string_of_int i)^")";;
print_string (s_of_t t);; 