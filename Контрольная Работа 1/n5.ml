type t = Br of t*t|L;;
let rec parse s i=if (i=String.length s) then (L,i) else (match s.[i] with 'B'->let (t1,i1) = parse s (i+3) in let (t2,i2) = parse s i1 in (Br (t1,t2),i2)
                                                                           |'L'->(L,(i+2))                                     
                                                                           |','|'('|')'->parse s (i+1));;
let s ="Br(Br(L,L),Br,(L,L))";;
let tr = parse s 0;;    
let rec s_of_t tree = match tree with Br (t1,t2)->"Br("^(s_of_t t1)^","^(s_of_t t2)^")"
                                     |L->"L";;let tree = Br(Br(L,L),L);;
print_string (s_of_t (fst tr));;