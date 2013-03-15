require "httpclient"
http = HTTPClient.new
str = http.get "http://www.google.com/search", :q => "bing" 
puts str.content
