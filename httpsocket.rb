require 'net/http'

h = Net::HTTP.new('www.aceteq.co',80)
resp,data = h.get('/index.html',nil)
if resp.message == 'OK'
	data.scan(/<img src="(.*?)"/) { |x| puts x}
end
