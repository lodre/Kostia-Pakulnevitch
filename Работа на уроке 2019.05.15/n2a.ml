let a = [|1;3;4;5;9;2;6|];;                                                                                                                                         
let rec kuchb a i x= if 2*i+2>x then true else (if 2*i+2=x then a.(i)>a.(2*i+1) else (((a.(i)>a.(2*i+1))&&(a.(i)>a.(2*i+2)))&&((kuchb a (2*i+1) x)&&(kuchb a (2*i+2) x))));;
let rec kuchm a i x= if 2*i+2>x then true else (if 2*i+2=x then a.(i)<a.(2*i+1) else (((a.(i)<a.(2*i+1))&&(a.(i)<a.(2*i+2)))&&((kuchm a (2*i+1) x)&&(kuchm a (2*i+2) x))));; 
let rec kuch a = if a.(0)>a.(1) then kuchb a 0 (Array.length a) else kuchm a 0 (Array.length a);;
print_string (if kuch a then "kucha" else "ne kucha");;