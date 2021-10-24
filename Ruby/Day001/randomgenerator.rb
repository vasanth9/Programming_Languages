x=rand(10)
input=gets.to_i
count = 1
while input!=x
    if input<x
        puts "#{input} is less than x."
    else 
        puts "#{input} is greater than x."
    end
    input=gets.to_i
    count=count+1
end
puts "congratulations!!! you have guessed the x=#{x} correctly in #{count} chances."

