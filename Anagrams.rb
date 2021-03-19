# Phase I:

# Write a method #first_anagram? that will generate and store all the possible 
# anagrams of the first string. Check if the second string is one of these.

def first_anagram?(str1, str2)

    # anagrams = Array.new(str1.length) {Array.new([])}

    # (str1.length).times do |i|
    #     str1.each_char do |char|
    #         anagrams[i] << char
    #     end
    # end
    # anagrams

    anagrams = []
    split_str1 = str1.split("")

    split_str1.each_with_index do |ele, idx|
        (idx...split_str1.length).each do |i|
            anagrams << split_str1[idx..i]
        end
    end

    anagrams

    #permutations
    # or do it ourself
end

p first_anagram?("cat", "tac")
# p first_anagram?(str1, str2)


"cat"  
"cta"  
"act"
"atc"
"tac"
"tca"

