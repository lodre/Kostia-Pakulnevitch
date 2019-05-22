type tree =N of int * tree * tree |L ;;
let tr = N (5,N (3,L,L),N (4,L,L));;
let rec test t f= match t with |N (k,t1,t2)->(f k) && ((test t1 (fun x->((f x) && (x<k))))
&&                                                    (test t2 (fun x->((f x) && (x>k)))))
                               |L -> true;;
print_string (if test tr (fun x-> true) then "true" else "false");;