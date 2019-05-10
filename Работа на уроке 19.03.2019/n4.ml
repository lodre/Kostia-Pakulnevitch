type tree = Leaf | Node of tree * tree * int;;
let rec rand n = if n>0 then (Random.int n;(rand (n-1))) else ();;      
rand ((int_of_float (Unix.gettimeofday ())) mod 100000);;

let rec make_random_tree n = if n>0 then Node ((if (Random.int 3)=0 then make_random_tree (n-1) else Leaf),(if (Random.int 3)=0 then make_random_tree (n-1) else Leaf),Random.int 1000) else Leaf;;

let rec make_tree n=if n>0 then (if Random.int 1 = 0 then (Node (make_tree (n-1),make_random_tree (n-1),(Random.int 1000))) else (Node (make_random_tree (n-1),make_tree (n-1),(Random.int 1000)))) else Leaf;; 

let n = 3;;
let t = make_tree n;;
let rec s_of_t t = match t with Leaf->"leaf"
                               |Node (t1,t2,i)->"Node ("^(s_of_t t1)^","^(s_of_t t2)^","^(string_of_int i)^")";;
print_string (s_of_t t);;