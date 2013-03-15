def fibo count
	a,b = 0,1
	count.times do 
		print a.to_s + ' '
		a,b = b,a+b
	end
end

fibo 10
