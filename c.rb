class Song

	attr_writer :name, :plays;
	@@plays = 0

	def initialize(name)
		@name = name
		@plays = 0
	end

	def play
		@plays += 1
		@@plays += 1
		puts "#@name has #@plays plays. Total: #@@plays"
	end
end

s1 = Song.new("apoorv")
s2 = Song.new("apoorv")
s3 = Song.new("apoorv")
s4 = Song.new("apoorv")
s1.play
s2.play
s3.play
s4.play
