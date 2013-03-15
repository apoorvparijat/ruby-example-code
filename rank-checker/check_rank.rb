require "httpclient"
def get_search_result ( keyword )
	http = HTTPClient.new
	http.get "http://www.google.com/search", :q => keyword
end

def get_search_result_at_page (keyword,page_no)
	http = HTTPClient.new
	http.get "http://www.google.com/search", {:q => keyword, :start => (page_no-1)*10 }
end

def get_result_position (domain, result)
	count = 0
	result.scan(/<li class=\"g\">(.*?)<\/li>/) do |matched|
		matched.each do |m|
			if(Regexp.new(domain) =~ m)
				puts "Domain Matched: " + domain
				count += 1
				return count
			end
		end
	end
end

result = get_search_result_at_page "testing my page", 2
p get_result_position "networking4all", result.content
