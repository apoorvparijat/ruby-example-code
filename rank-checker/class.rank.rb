require "httpclient"

class RankChecker
	attr_accessor :domain, :keyword, :position, :page

	def get_search_result 
		http = HTTPClient.new
		http.get "http://www.google.com/search", :q => keyword
	end


	def get_search_result_at_page (pn)
		http = HTTPClient.new
		http.get "http://www.google.com/search", {:q => keyword, :start => (pn-1)*10 }
	end

	def get_result_position_in (content)
		position = 0
		content.scan(/<li class=\"g\">(.*?)<\/li>/) do |matched|
			matched.each do |m|
				position += 1
				if(Regexp.new(domain) =~ m)
					return position
				end
			end
		end
		return position
	end

	def find_rank_for_keyword (kw)
		self.keyword = kw
		domain_regex = Regexp.new domain 
		rank = []
		5.times do |x|
			content = get_search_result_at_page(x+1).content
			if (domain_regex =~ content)
				self.page = x+1
				self.position = get_result_position_in content
				break
			end
		end
		if self.position == 0
			puts "Not ranking."
		end

		rank << self.page << self.position
		return rank

	end

	def to_s
		if !page
			puts "Not ranking"
			return
		end
		rank = (page-1)*10 + position
		str = "Domain '#{domain}' ranks for keyword '#{keyword}' at '#{position}' position on page '#{page}'.\n Rank is #{rank}"	
	end

end


r = RankChecker.new
r.domain = ARGV[0].to_s
rank = r.find_rank_for_keyword "panic away"
puts r.to_s
