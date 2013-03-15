$fib = Array.new

def f(n)
	if($fib[n] != NIL)
		return $fib[n]
	end
	if(n < 2)
		return $fib[n] = n
	end
	$fib[n] = f(n-2) + f(n-1)
	return $fib[n]
end

1.upto(100) {|x|
	print f(x), " "
}
