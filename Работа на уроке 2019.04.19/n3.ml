type tree = Leaf | Node of tree * tree * int;;
let n = 25;;

let rec make_bambuk n p = if p>0 then Node (Leaf,(make_bambuk n (p-1)),p) else Leaf;;     
let f1 () = make_bambuk n n;;  
let rec make_tree n p = if n>0 then (let k = int_of_float (2.**((float n)-.1.)) in Node (make_tree (n-1) p,make_tree (n-1) (p+k),(k+p))) else Leaf;;
let f2 () = make_tree n 0;;
let rec time f = let t = Unix.gettimeofday () in f ();(Unix.gettimeofday ())-.t;;
print_string ("N1:"^(string_of_float (time f2))^"\nN2:"^(string_of_float (time f1)));;
