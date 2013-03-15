fib = Fiber.new do  
x, y = 0, 1 
	loop do  
		Fiber.yield y 
		x,y = y,x+y 
	end 
end 

3.times { puts fib.resume }
puts "----"
10.times { puts fib.resume }