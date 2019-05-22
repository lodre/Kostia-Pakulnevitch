type tree = Leaf | Node of tree * tree * int;;       

let rec map l f = match l with a::b->if f a then a::(map b f) else (map b f)
                              |[]->[];;

let rec back l1 l2 = match l2 with []->Leaf
                                  |x::b->Node (back (map l1 (fun y -> y<x)) (map l2 (fun y -> y<x)),back (map l1 (fun y -> y>x)) (map l2 (fun y -> y>x)),x);;

let tLKP =[4;5;6;7;8];;
let tKLP =[5;4;7;6;8];;           
type t = Br of t*t|L;;
let rec s_of_t tree = match tree with Node (t1,t2,k)->"Node("^(s_of_t t1)^","^(s_of_t t2)^(string_of_int k)^")"
                                     |Leaf->"Leaf";;
let tree = back tLKP tKLP;;
print_string (s_of_t tree);;