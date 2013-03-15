require 'thread'

mutex = Mutex.new
resource = ConditionVariable.new

a = Thread.new {
	mutex.synchronize{
		puts "a waiting"
		resource.wait(mutex)
		puts "a has it"
	}
}
resource.signal
b = Thread.new {
		puts "b executing"
		puts "b finished"
}

[a,b].each do |t|
	t.join
end

