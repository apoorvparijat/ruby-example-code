require 'socket'

s = TCPServer.open(80)
loop do
  client = s.accept
  puts "client connected"
  while(str = client.gets.chomp)
    puts str
    str = nil
  end
  client.close
  puts "closed"
end
