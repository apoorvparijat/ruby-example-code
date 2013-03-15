count1 = count2 = 0
difference = 0
counter = Thread.new do
	loop do
		count1 += 1
		count2 += 1
		puts "Count1 : " + count1.to_s
		puts "Count2 : " + count2.to_s
	end
end

spy = Thread.new do
	loop do
		difference += (count1 - count2).abs
		puts "difference of #{count1} and #{count2} : " + difference.to_s
	end
end

sleep 0.1

Thread.critical = 1
puts count1
puts count2
puts difference

