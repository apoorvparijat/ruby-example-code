module SillyModule
	def hello
		puts "Hello."
	end
end

class SillyClass
	  include SillyModule
end
s = SillyClass.new
s.hello