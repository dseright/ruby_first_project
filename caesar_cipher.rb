def caesar_cipher(phrase, count)
	phraseArray = phrase.split(//)
	phraseArray.map! do |letter|
		letter = letter.ord
		if letter.between?(97,122)
			letter += count
			while letter > 122
				letter -= 26
			end
			while letter < 97
				letter += 26
			end
		end
		if letter.between?(65,90)
			letter += count
			while letter > 90
				letter -= 26
			end
			while letter < 65
				letter +=26
			end
		end
		letter = letter.chr
	end
	shiftedPhrase = phraseArray.join
	puts shiftedPhrase
end
caesar_cipher("Fancy pants text", -47)
caesar_cipher("Kfshd ufsyx yjcy", 47)