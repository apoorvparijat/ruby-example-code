#ARGF.each { |line|  print line  if line =~ /Ruby/ }

def myfn
	yield "bing a ling"
end

myfn {| myParam | puts myParam}
