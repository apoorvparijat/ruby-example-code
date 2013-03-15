require 'net/http'
require 'uri'


uri = URI("http://www.google.co.in/search?client=safari&rls=en&q=l&ie=UTF-8&oe=UTF-8")
req = Net::HTTP::Get.new(uri.request_uri)
req["User-Agent"] = "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b"

res = Net::HTTP.start(uri.hostname, uri.port) {|http|
	http.request(req)
}
puts res.body
