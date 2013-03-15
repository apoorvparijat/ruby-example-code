require "uri"
require "net/http"

params = {"box1" => "Nothing is less important than which form you use","button1" => "Submit"}

x = Net::HTTP.post_form(URI.parse("http://www.google.com"),params)

puts x.body
