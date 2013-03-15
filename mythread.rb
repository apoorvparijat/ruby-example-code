thread = Thread.new {
	(5).times do 
	sleep(1)

	Thread.current["name"] = "thread 1"
	Thread.current["count"] = Thread.current["count"].nil? ? 0 : Thread.current["count"]+5
	end
}
thread.join
puts thread["name"],":",thread["count"]
