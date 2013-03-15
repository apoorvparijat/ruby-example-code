module Talk
    def to_s
        puts "here"
    end
    def bing
        puts "bing a ling"
    end
end

module Summable
    def sum
        inject(:+)
    end
end

class Fixnum
   include Talk
   
end
class Range
    include Summable
end
puts 1.bing
puts (1..4).sum
