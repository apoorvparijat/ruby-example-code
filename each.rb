class Periods
	def each
		yield "toc"
		yield "os"
		yield "cd"
		yield "coa"
	end
end

periods = Periods.new
for genre in periods
	puts genre
end
