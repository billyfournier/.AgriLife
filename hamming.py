# Compares two strings (str1 and str2) to calculate the hamming distance.
# Hamming Distance is the number of substitions required to make two strings of identical length match. EX. CATS and HATS has a hamming distance of 1 because it only requires one substition to make the words the same.
#
# @param str1: first string to compare
# @param str2: second string to compare
# @return hammingDistance: returns the number of character substitutions required to make these two strings match.

def hammingDistance(str1, str2):
	#needs to add code to make sure string lengths 
	#are the same for str1 and str2
	hammingDistance = 0	
	for ch1,ch2 in zip(str1,str2):
		if str1 != str2:		
			if str1 != "." or str2 != ".":
				hammingDistance += 1
	return hammingDistance

# need a function to return the index of the first element of the string and also the length of the string. This information should be used to remove the primer sequence; and the corrisponding quality data in the case of a fastq file.

import random
def genRandomNucleoSequence(seqLength,numOfSeqs):
	nucleo = ['a', 't', 'c', 'g']
	text_file = open("test", "w")
	text_file.write(">\n")
	for i in range(numOfSeqs):
		for j in range(seqLength):
			text_file.write(random.choice(nucleo))
		text_file.write("\n")
	text_file.write("+\n")
	text_file.write(">\n")
	text_file.close()

genRandomNucleoSequence(25,2)


# I need a function to analysize a single string for barcode

with open("test") as fastq:
	for line in fastq:
		

	

