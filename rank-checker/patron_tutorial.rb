require "patron"
sess = Patron::Session.new
sess.timeout = 2
sess.base_url = "http://www.flipkart.com"
sess.headers["User-Agent"] = "Mozilla"
sess.enable_debug "patron.debug"

resp = sess.get("/")
if resp.status < 400
  puts resp.body
end