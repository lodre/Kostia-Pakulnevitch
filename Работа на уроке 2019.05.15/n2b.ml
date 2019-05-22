let a = [|10;5;15;2;7;12;18|];;                                                                                                                                         
let rec treeb a i x= if 2*i+2>x then true else (if 2*i+2=x then a.(i)>a.(2*i+1) else (((a.(i)<a.(2*i+1))&&(a.(i)>a.(2*i+2)))&&((treeb a (2*i+1) x)&&(treeb a (2*i+2) x))));;
let rec treem a i x= if 2*i+2>x then true else (if 2*i+2=x then a.(i)<a.(2*i+1) else (((a.(i)>a.(2*i+1))&&(a.(i)<a.(2*i+2)))&&((treem a (2*i+1) x)&&(treem a (2*i+2) x))));; 
let rec tree a = if a.(0)>a.(1) then treeb a 0 (Array.length a) else treem a 0 (Array.length a);;
print_string (if tree a then "tree" else "ne tree");;