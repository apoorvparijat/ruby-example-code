def three_times x, &block

    yield "apoorv"
    yield "parijat"
    yield "roadmojo"

    new_func &block
    
end

def new_func
    yield "new_func"
end

three_times("bing") { |name| puts "hello #{name}" }

puts "second call"
#three_times("shivam") {|name| puts "hello #{name}" }
