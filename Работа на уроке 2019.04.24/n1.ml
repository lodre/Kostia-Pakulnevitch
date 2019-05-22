let l = [(0,325);(1,34);(2,45);(3,324)];;
type 'a ty = B of 'a|N;;
let a = 2;;      
let rec key l a = match l with (x,y)::b->if x = a then B y else key b a
                              |[]->N;;
let b = key l a;;
print_string (match b with N-> "No"|B b->string_of_int b);;