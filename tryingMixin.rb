module OSSN
	def getSSN
		puts "I'm #{self.class}. My clan is #{self.type}"
	end
end


class Employees
	include OSSN
end

raktim = Employees.new
raktim.getSSN
