let r = 4;;            
for i = 0 to (2*r+1) do
(for j = 0 to (2*r+1) do
    print_string (if (((r-i)*(r-i))+((r-j)*(r-j))-(r*r)<=r)&&(((r-i)*(r-i))+((r-j)*(r-j))-(r*r)>= -r) then "*" else " ")
done;print_string "\n")
done;;