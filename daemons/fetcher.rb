require 'socket'                # Get sockets from stdlib

class FetcherThread
  
  attr_accessor :thread_id,  :domain, :keyword, :client
  
  def run
    loop do
      test_output client
      sleep 2
    end
  end
  
  def test_output client
    client.puts "thread[#{@thread_id}]: function called"
  end
  
end

class Fetcher
  @@threads = Hash.new
  @@ft = Hash.new
  @@thread_count = 0
  def server
    @@s = TCPServer.open(2000)
    loop do
      client = @@s.accept
      @@thread_count += 1
      temp_ft = FetcherThread.new
      temp_ft.thread_id = @@thread_count
      temp_ft.client = client
      @@ft[@@thread_count] = temp_ft
      @@threads[@@thread_count] = Thread.new {
        client.puts "Running fetcher thread"
        temp_ft.run
      }
    end
  end
  
end

f = Fetcher.new
f.server

