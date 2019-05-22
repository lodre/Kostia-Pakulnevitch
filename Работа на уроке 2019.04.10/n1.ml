type tree = Leaf | Node of tree * tree * int;;       
let rec obhod_KLP t = match t with Node (t1,t2,k)->(print_int k;obhod_KLP t1;obhod_KLP t2)
                                  |Leaf -> () ;;
let rec obhod_LKP t = match t with Node (t1,t2,k)->(obhod_LKP t1;print_int k;obhod_LKP t2)
                                  |Leaf -> () ;;
let rec obhod_LPK t = match t with Node (t1,t2,k)->(obhod_LPK t1;obhod_LPK t2;print_int k)
                                  |Leaf -> () ;;
                                  
let t = Node (Node (Leaf,Leaf,4),Node (Node (Leaf,Leaf,6),Node (Leaf,Leaf,8),7),5);;   
                                                                                                 
print_string "\nKLP:";;obhod_KLP t;;
print_string "\nLKP:";;obhod_LKP t;;
print_string "\nLPK:";;obhod_LPK t;;

