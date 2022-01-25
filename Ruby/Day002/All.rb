# • Print the contents of an array of sixteen numbers, four numbers at a time, using just each . Now, do the same with each_slice in Enumerable .
(1..16).each_slice(4) {|a| p a}
# [1, 2, 3, 4]
# [5, 6, 7, 8]
# [9, 10, 11, 12]
# [13, 14, 15, 16]
# • The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a
#   nested structure with hashes and arrays. You should be able to specify a tree like this:
#      {’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }.
# • Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do
#   a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.
puts "Enter the phrase to find"
phrase = gets
regex = Regexp.new(phrase.strip)
File.open('grep.txt','r') do |f|
    f.each_line.with_index do |line,index|
        if (regex).match(line)
            puts "#{index+1}. #{line}"
        end
    end
end
# Enter the phrase to find
# In
# 6.  Integer laoreet commodo placerat.
# 7.  In hac habitasse platea dictumst.
# 33.  Interdum et malesuada fames ac ante ipsum primis in faucibus.
# 48.  Integer quis tincidunt orci.
# 51.  In condimentum ullamcorper libero, at pharetra velit lobortis eget.