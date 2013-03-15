require 'thread'
mutex = Mutex.new

count1 = count2 = 0
difference = 0

counter = Thread.new do
	loop do
		mutex.synchronize do
			count1+= 1
			count2+= 1
			puts "c1:" + count1.to_s
			puts "c2:" + count2.to_s
		end
	end
end

spy = Thread.new do
	loop do
		mutex.synchronize do
			difference += (count1-count2).abs
			puts "d:" + difference.to_s
		end
	end
end

sleep 2
mutex.lock
puts count1
puts count2
puts difference
