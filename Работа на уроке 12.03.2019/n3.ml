type tree = Leaf | Node of tree * tree * int;;  
let rec add t x = match t with Node (t1,t2,k)->if x>k then Node (t1,(add t2 x),k) else (if x < k then Node ((add t1 x),t2,k) else Node (t1,t2,k))
                              |Leaf->Node (Leaf,Leaf,x);;
let t = Node (Node (Leaf,Leaf,4),Node (Node (Leaf,Leaf,6),Node (Leaf,Leaf,8),7),5);;
let x = 3;;


let rec s_of_t t = match t with Leaf->"leaf"
                               |Node (t1,t2,i)->"Node ("^(s_of_t t1)^","^(s_of_t t2)^","^(string_of_int i)^")";;


let t = add t x;;

print_string (s_of_t t);; 