# Phase I:

# Write a method #first_anagram? that will generate and store all the possible 
# anagrams of the first string. Check if the second string is one of these.

def first_anagram?(str1, str2)

    anagrams = Array.new([])

    (str1.length).times do |i|
        str1.each_char do |char|
            anagrams[i] << char
        end
    end
    anagrams
end

p first_anagram?("cat", "tac")
# p first_anagram?(str1, str2)



