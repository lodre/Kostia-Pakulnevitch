type tree = Leaf | Node of tree * tree * int;;       
type 'a ty = B of 'a|N;;

let l = [(0,5);(1,3);(2,7);(3,2);(4,4);(5,6);(6,8)];;

let rec key l a = match l with (x,y)::b->if x = a then B y else key b a |[]->N;;
let rec make_tree l a =let b = key l a in match b with N -> Leaf |B x->Node (make_tree l (2*a+1),make_tree l (2*a+2),x);;
let t = make_tree l 0;;
let rec s_of_t tree = match tree with Node (t1,t2,k)->"Node("^(s_of_t t1)^","^(s_of_t t2)^","^(string_of_int k)^")"
                                     |Leaf->"Leaf";;
print_string (s_of_t t);;
