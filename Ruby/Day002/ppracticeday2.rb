animals=['lions','tigers','bears']
puts animals
#negative indices
puts animals[-2]
#ranges
puts animals[0..1]
#what is the class of 0..1 
puts (0..1).class
a=[]
a[0]='zero'
a[1]=1
a[2]=['two','things']
a[3]=[[1,2,3],[10,12]]

stuff={:array=>[1,2,3],:string=>'Hi, mom!'}

puts stuff[:string]

3.times {puts 'hiya there, kiddo'}

animals.each{|a| puts a}

class Fixnum
    def my_times
        i = self
        while i>0
            i=i-1
            yield
        end
    end
end

4.my_times {puts 'mangy moose'}