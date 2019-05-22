type tree = Leaf | Node of tree * tree * int;;       
let rec obhod t1 t2= match t1 with (Node (t3,t4,k))::b->(print_int k;obhod b (t2 @ [t3;t4]))
                                  |Leaf::b ->obhod b t2 
                                  |[]->if t2 = [] then () else obhod t2 [];;

                                  
let t = Node (Node (Leaf,Leaf,4),Node (Node (Leaf,Leaf,6),Node (Leaf,Leaf,8),7),5);;
  
obhod [t] [];;