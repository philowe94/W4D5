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

    min = arr[0]
    (1..arr.length)
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_one(list)

