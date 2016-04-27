dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, list)
	results = Hash.new(0)
	word = word.split(" ")
	word.length.times { |i| word[i].gsub!(/\W/, "") }
	word.each do |target|
		target.downcase!
		list.each do |input|
			if target.include?(input)
				results[input] += 1
			end
		end
	end
	puts "#{results}"
end

substrings("Howdy partner, sit down! How's it going?", dictionary)