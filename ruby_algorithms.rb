# Contains Duplicates
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/578/

# Input: [1,2,3,1]
# Output: true

# Input: [1,2,3,4]
# Output: false

# Input: [1,1,1,3,3,4,3,2,4,2]
# Output: true

# @param {Integer[]} nums
# @return {Boolean}
# i = 0
# j = 1

# ### This part doesn't work because I can't break out of multiple "while" loops; I could fix this, but my solutions feel hacky.
# def contains_duplicate(nums, i, j)
#     puts "19: i: #{i}"
#     puts "20: j: #{j}"
#     while i < nums.length
#         puts "22: i: #{i}"
#         puts "23: j: #{j}"
#         while j <= nums.length
#             puts "25: i: #{i}"
#             puts "26: j: #{j}"
#             if nums[i] == nums[j]
#                 puts true
#                 return true
#             else
#                 puts "Else statement"
#                 j += 1
#                 contains_duplicate(nums, i, j)
#             end
#         end
#         "Finished while j"
#         i += 1
#         j = i + 1
#         contains_duplicate(nums, i, j)
#     end
#     puts "false"
#     return false
# end


# def contains_duplicate(nums)
#     nums.each do |num|
#         i = nums.index(num) + 1
#         while i <= nums.length
#             if num == nums[i]  
#                 puts true
#                 return true
#             end
#             i += 1
#         end
#     end
#     puts false
#     return false
# end




# ex_nums = [1,1,1,3,3,4,3,2,4,2]

# contains_duplicate(ex_nums)



## CtCI 1.1
    # Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?


def uniq_char?(str)
    hh = Hash.new

    str.each_char do |char|
        if hh.key?(char)
            puts "false"
            return false
        else
            hh[char] = 1
            puts hh
        end
    end

    puts "true"
    return true
end

# example = "hi"
# example = "hello"
# example = "abcdefghijklmnopqrstuvwxyz"

uniq_char?(example)