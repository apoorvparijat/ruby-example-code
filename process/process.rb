require_relative 'helper'
puts "1. Backtick operator"
output = `#{RUBY} -r#{THIS_FILE} -e'hello("backticks", true)'`
output.split("\n").each do |line|
  puts "[parent] output: #{line}"
end
puts
