file =  File.open("test.txt")
while file.gets
	print if /third/ .. /fifth/
end
