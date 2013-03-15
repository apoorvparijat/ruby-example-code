alias oldBackquote `
def ` cmd 
	result = oldBackquote cmd
	if $? != 0
		raise "Command #{cmd} failed"
	end
	result
end
print `date`
print `data`
