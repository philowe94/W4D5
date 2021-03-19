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
    str2_arr = str2.split("")           # O(1)
    str1.each_char do |char|            # O(n)
        idx = str2_arr.find_index(char) # O(n)
        return false if idx == nil      # O(1)
        str2_arr.delete_at(idx)         # O(1)
    end
    return str2_arr.empty?              # O(1)
end

#O(n^2)

# p second_anagram?("cat", "tac")
# p second_anagram?("elvis", "lives")

def third_anagram?(str1, str2)
    str1sorted = str1.split("").sort.join
    str2sorted = str2.split("").sort.join

    return str1sorted == str2sorted
end

# p third_anagram?("cat", "tac")
# p third_anagram?("elvis", "lives")

# Phase IV:

# Write one more method #fourth_anagram?. This time, use two Hashes to store 
# the number of times each letter appears in both words. Compare the resulting hashes.



def fourth_anagram?(str1, str2)

    str1_hash = Hash.new {|h,k| h[k] = 0 }  # O(1)
    str2_hash = Hash.new {|h,k| h[k] = 0 }  # O(1)

    str1.each_char do |char|                # O(n)
        str1_hash[char] += 1
    end

     str2.each_char do |char|               # O(n)
        str2_hash[char] += 1
    end

    str1_hash == str2_hash                  # O(1)

end

# O(n) + O(n) = n

p fourth_anagram?("cat", "tac")
p fourth_anagram?("elvis", "lives")
