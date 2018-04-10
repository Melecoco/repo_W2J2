
def jean_michel_data(string, dictionary)
	frequencies = Hash.new
	dictionary.each do |substring|
		frequencies[substring] = string.scan(/(?=#{substring})/).count
		frequencies.delete(substring) if frequencies[substring] == 0
	end
	frequencies
end

dictionnary=["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts "tell me a sentence"
sentence=gets.chomp
puts "the current dictionnary is composed of #{dictionnary} "
puts jean_michel_data(sentence, dictionnary)
