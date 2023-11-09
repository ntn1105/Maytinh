$i=1
$num=2
while $i<= $num do
    puts("test#$i")
    system("ruby test#$i.rb")
    $i+=1
    puts "\n"
end