require "faraday"
=begin
sess = Patron::Session.new
sess.base_url = "http://www.flipkart.com"
sess.headers["User-Agent"] = "Mozilla"
sess.enable_debug "patron.debug"

resp = sess.get("/")
if resp.status < 400
  puts resp.body
end

start = 0
keyword="blah a"
sess = Patron::Session.new
sess.base_url = "http://localhost"
sess.headers["User-Agent"] = "Mozilla"
sess.timeout = 3000
#resp = sess.get("/search?q="+URI.escape(keyword)+"&start=" + start.to_s)
sess.enable_debug "patron.debug"
resp = sess.get("/")

sess.close

=end

conn = Faraday.new
conn.headers = {'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4)'}
conn.get("http://localhost")
