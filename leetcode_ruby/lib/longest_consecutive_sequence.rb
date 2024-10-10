# https://leetcode.com/problems/longest-consecutive-sequence/

# Input: nums = [100,4,200,1,3,2]
# Output: 4
# Explanation: The longest consecutive elements sequence is [1, 2, 3, 4].
#  Therefore its length is 4.


def longest_consecutive(nums)
    return 0 if nums.length == 0
    sorted = nums.sort.uniq
    
    consecutive = 1
    max_counter = 1
    sorted.each_cons(2) do |a, b|
        if b == a + 1
            consecutive += 1
        else
            consecutive = 1
        end
        max_counter = consecutive if consecutive > max_counter
    end
    return max_counter
end