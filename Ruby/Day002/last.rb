a=[5,3,4,1]
a.sort
a.max
a.select {|i| i%2 ==0}
a.member?(2)
a.any? {|i| i>2}
a.all? {|i| i>2}
a.inject(0) {|sum,i| sum+i}