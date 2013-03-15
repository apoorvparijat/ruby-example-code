require "rbconfig"

THIS_FILE = File.expand_path(__FILE__)
RUBY = File.join(RbConfig::CONFIG['bindir'], RbConfig::CONFIG['ruby_install_name'])

def hello(source, expect_input)
	puts "[child] Hello from #{source}"
	if expect_input
		puts "[child] Standard input contains: \"#{$stdin.readline.chomp}\""
	else
		puts "[child] No stdin, or stdin is same as parent."
	end
	$stderr.puts "[child] Hello, standard error"
end
