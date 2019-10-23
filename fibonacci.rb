n1=2
n2=3
n3=5
s=2

while n3<4000000
    puts n3
    n3=n1+n2
    n1=n2
    n2=n3
    if n3<4000000 && n3%2==0
        s+=n3
    end
end

puts s

