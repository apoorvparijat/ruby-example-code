class MultipleOfTwo
    attr_reader :value
    def initialize val
        @value = val
    end
    def succ
        MultipleOfTwo.new ((@value/2)+1) * 2
    end
    def <=> other
        @value <=> other.value
    end
    def to_s
        @value.to_s
    end
end

x1 = MultipleOfTwo.new 11
x2 = MultipleOfTwo.new 40
puts (x1..x2).to_a
