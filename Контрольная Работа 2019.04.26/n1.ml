type t = Br of t*t|L;;
let rec s_of_t tree = match tree with Br (t1,t2)->"Br("^(s_of_t t1)^","^(s_of_t t2)^")"
                                     |L->"L";;
let tree = Br(Br(L,L),L);;
print_string (s_of_t tree);;