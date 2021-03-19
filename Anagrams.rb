# Phase I:

# Write a method #first_anagram? that will generate and store all the possible 
# anagrams of the first string. Check if the second string is one of these.

def first_anagram?(str1, str2)

    str1.split("").permutation.each do |perm|   # O(n!)
        word = perm.join("")                    # O(1)
        return true if word == str2             # O(1)
    end
    false                                       # O(1)
end

 # O(n!) = n!

# p first_anagram?("cat", "tac")
# p first_anagram?("elvis", "lives")

# Phase II:

# Write a method #second_anagram? that iterates over the first string. For each
#  letter in the first string, find the index of that letter in the second string
#   (hint: use Array#find_index) and delete at that index. The two strings are
#    anagrams if an index is found for every letter and the second string is empty
#     at the end of the iteration.

# Try varying the length of the input strings. What are the differences between
 #first_anagram? and #second_anagram??


def second_anagram?(str1, str2)
    str2_arr = str2.split 
    str1.each_char do |char|
        str2_arr.find_index(char)
    end
end




