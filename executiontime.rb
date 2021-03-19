#my_min
#Given a list of integers find the smallest number in the list.

# Phase I

# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?
def my_min_one(arr)

    # best case = O(n)
    # worse case = O(n^2)
    
    arr.each do |ele1|    # O(n)    
       if arr.all? { |ele2| ele1 <= ele2 } # O(n)
            return ele1     # O(1)
       end
    end
    false
end

# O(n) * O(n) = n^2

# Phase II

# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?

def my_min_two(arr)

    min = arr.first # O(1)
    (1...arr.length).each do |idx| # O(n)
        ele = arr[idx] # O(1)
        if ele < min   # O(1)
            min = ele  # O(1)
        end
    end
    min #O(1)
end

# Cancel out the constants =>
# O(n)
# Linear time


# Largest Contiguous Sub-sum

# You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. 
# Find the sums of all contiguous sub-arrays and return the max.

# Phase I

# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

def largest_contiguous_subsum_one(list)
    arr = []

    list.each_with_index do |ele, idx|      # O(n)
        (idx...list.length).each do |idx2|  # O(n)
            arr << list[idx..idx2]          # O(1)
        end
    end

    largest_subsum = 0                      # O(1)
    arr.each do |subarr|                    # O(n^2)
        sub_sum = subarr.sum                # O(1)
        if sub_sum > largest_subsum         # O(1)
            largest_subsum = sub_sum        # O(1)
        end
    end
    largest_subsum                          # O(1)
end

# O(n) *  O(n) +  O(n^2) = n^2 + n^2 = n^2
# Quadratic time


def largest_contiguous_subsum_two(list)

    largest_sum = list.first           # O(1)
    current_sum = list.first           # O(1)

    list[1..-1].each do |ele|           # O(n)
        if current_sum < 0              # O(1)
            current_sum = 0             # O(1)
        end
        current_sum += ele              # O(1)
        if current_sum > largest_sum    # O(1)
            largest_sum = current_sum   # O(1)
        end
    end
    largest_sum                         # O(1)
end

# O(n) = n

list = [5, 3, -7]
list_1 = [2, 3, -6, 7, -6, 7]

p largest_contiguous_subsum_two(list)
p largest_contiguous_subsum_two(list_1)

# list = [5, 3, -7]
# largest_contiguous_subsum(list) # => 8

# # possible sub-sums
# [6]           # => 6
# [6, -9]        # => -3 
# [6, -9, 10]    # => 7
# [-9]           # => -9
# [-9, 10]       # => 1
# [10]          # => 10

# [2, 3, -6, 7, -6, 7]

