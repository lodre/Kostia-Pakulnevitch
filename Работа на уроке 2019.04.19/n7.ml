type tree = Leaf | Node of tree * tree * int;;
let k = 6;;
let t = Node (Node (Leaf,Leaf,4),Node (Node (Leaf,Leaf,6),Node (Leaf,Leaf,8),7),5);;
let rec pod_tree t k = match t with Leaf->Leaf
                               |Node (t1,t2,x)->if x=k then t2 else (if x>k then Node (pod_tree t1 k, t2, x) else pod_tree t2 k);;

let rec s_of_t tree = match tree with Node (t1,t2,k)->"Node("^(s_of_t t1)^","^(s_of_t t2)^","^(string_of_int k)^")"
                                     |Leaf->"Leaf";;
let tree = pod_tree t k;;
print_string (s_of_t tree);;