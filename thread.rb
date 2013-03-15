count = 0
arr = []
10.times do |i|
  arr[i] = Thread.new {
  	sleep(5)
      	Thread.current["mycount"] = count
	count += 1
  }
end
puts "here"
arr.each {|t| t.join; print t["mycount"], ", " }
puts "count = #{count}"
