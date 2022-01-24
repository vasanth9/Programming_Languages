
# • Print the string “Hello, world.”
puts "Hello, world."
# Hello, world.

# • For the string “Hello, Ruby,” find the index of the word “Ruby.”
puts "Hello, Ruby.".index("Ruby.")
# 7

# • Print your name ten times.
i = 0
while i < 10
    i=i+1
    puts "Vasanth Kumar Cheepurupalli"
end
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli
# Vasanth Kumar Cheepurupalli

# • Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10.
i = 1
while i <= 10
    puts "This is sentence number #{i}"
    i=i+1
end
# This is sentence number 1
# This is sentence number 2
# This is sentence number 3
# This is sentence number 4
# This is sentence number 5
# This is sentence number 6
# This is sentence number 7
# This is sentence number 8
# This is sentence number 9
# This is sentence number 10

# • Run a Ruby program from a file.

# • Bonus problem: If you’re feeling the need for a little more, write
# a program that picks a random number. Let a player guess the
# number, telling the player whether the guess is too low or too high.
# (Hint: rand(10) will generate a random number from 0 to 9, and
# gets will read a string from the keyboard that you can translate to
# an integer.)

puts "Guess the number:"
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
