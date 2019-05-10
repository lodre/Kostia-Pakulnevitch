type tree = Leaf | Node of tree * tree * int;;  
let rec find tre x n= match tre with Leaf-> -1
                                    |Node (t1,t2,k)->if x < k then find t1 x (2*n+1) else (if x > k then find t2 x (2*n+2) else n);; 


let t =Node (Node (Leaf,Leaf,2),Node (Leaf,Leaf,5),3);;
let x =4;;


let y = find t x 0;;
if y = -1 then print_string "No" else (print_int y);;