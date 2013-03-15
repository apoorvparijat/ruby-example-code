puts "This loaded."
f = File.new("/tmp/log.rb.out",'w')
loop do
	f.puts "blah"
	sleep 3
end
