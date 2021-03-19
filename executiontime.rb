#my_min
#Given a list of integers find the smallest number in the list.

# Phase I

# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?
def my_min_one(arr)
    prc = Proc.new { |a, b| a < b }
    arr.each { |ele1| arr.all? { |ele2| prc.call(ele1, ele2)} }
    arr.first
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_one(list)