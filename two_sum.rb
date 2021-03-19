def bad_two_sum?(arr, target_sum)

    arr.each_with_index do |ele, idx|
        arr[idx+1..-1].each_with_index do |ele2, idx2|
            return true if ele + ele2 == target_sum
        end
    end
    false
end


# two_sum?

# Given an array of unique integers and a target sum, determine whether 
# any two integers in the array sum to that amount.

def two_sum?(arr, target_sum)


end

arr = [0, 1, 5, 7]

p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false