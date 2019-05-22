type tree = Leaf | Node of tree * tree * int;;
let rec make_tree n p = if n>0 then (let k = int_of_float (2.**((float n)-.1.)) in Node (make_tree (n-1) p,make_tree (n-1) (p+k),(k+p))) else Leaf;;
let n = 3;;
let t = make_tree n 0;;
let rec s_of_t t = match t with Leaf->"leaf"
                               |Node (t1,t2,i)->"Node ("^(s_of_t t1)^","^(s_of_t t2)^","^(string_of_int i)^")";;
print_string (s_of_t t);; 