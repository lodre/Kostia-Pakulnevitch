let rec swap a n k =let b = a.(k) in
a.(k)<-a.(n);a.(n)<-b;;
let a =[|7;6;4;5;3;2|];;
let rec sort a = for i = 0 to (Array.length a) - 1 do
                    for j = 0 to (Array.length a) - 2 do
                       if a.(j)>a.(j+1) then (swap a j (j+1)) 
                    done
                 done;;
                     
let rec print_array array =print_string "\n[|";
   (for i=0 to (Array.length array)-1 do
   print_int (array.(i));print_string";"
   done);
   print_string"|]\n";;
sort a;;
print_array a;;