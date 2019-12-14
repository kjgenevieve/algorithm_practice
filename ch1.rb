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
    # Implement an algorithm to determine if a string has all unique characters.
        # def uniq_char?(str)
        #     hh = Hash.new

        #     str.each_char do |char|
        #         if hh.key?(char)
        #             puts "false"
        #             return false
        #         else
        #             hh[char] = true
        #             # puts hh
        #         end
        #     end

        #     puts "true"
        #     return true
        # end

        # def uniq_char?(str)
        #     # pseudocode:
        #         str = str.to_arry.sort!
        #         i = 0
        #         for i in 0...str.length - 1 #(make sure that's inclusive!)
        #             if str[i] == str[i + 1]
        #                 return false
        #             else
        #                 i += 1
        #             end
        #         end
        #         return true
        # end

        # example = "hi"
        # example = "hello"
        # example = "abcdefghijklmnopqrstuvwxyz"

        # uniq_char?(example)

    ## Optimizations/Questions
        # There's a finite number of characters; automatically return fase if str.length > possible # of chars
        # If the string contains "A" && "a", should it be true or false?


## CtCI 1.2
    # Implement a function void reverse(char* str) in C or C++ which reverses a null-terminated string.

    # What?

## CtCI 1.3
    # Given two strings, write a method to decide if one is a permutation of the other.
    # Assumptions
        # We are looking for anagrams only; whitespace is important.
        # A != a

    # def anagrams?(str1, str2)
    #     if str1.length != str2.length
    #         puts "false 128"
    #         return false
    #     end

    #     hh = Hash.new
    #     str1.each_char do |char|
    #         if hh.key?(char)
    #             hh[char] += 1
    #         else
    #             hh[char] = 1
    #         end
    #     end

    #     str2.each_char do |char|
    #         if hh.key?(char) && hh[char] < 1
    #             hh[char] -= 1
    #         else
    #             puts "false 149"
    #             return false
    #         end
    #     end
    #     puts "true"
    #     return true
    # end

        # hh2 = Hash.new
        # str2.each_char do |char|
        #     if hh2.key?(char)
        #         hh2[char] += 1
        #     else
        #         hh2[char] = 1
        #     end
        # end

        # if hh1 == hh2
        #     puts "true"
        #     return true
        # else
        #     puts "false"
        #     return false
        # end
    # end

    # ex1 = "boggle"
    # ex2 = "bogglb"

    # anagrams?(ex1, ex2)



## CtCI 1.4
    # Write a method to replace all spaces in a string with '%20'.
    # Example:
        # Input: "Mr John Smith      "
        # Output: Mr%20John%20Smith"

    # def change_spaces(str)
    #     str.strip!
    #     ary = str.chars
        
    #     ary.map! do |elem|
    #         if elem == " "
    #             elem = "%20"
    #         else
    #             elem = elem
    #         end
    #     end
    #     str = ary.join("")
    #     p str
    # end

    # example = "Mr John Smith       "

    # change_spaces(example)


## CtCI 1.5
    # Implement a method to perform basic string compression using the counts of repeated chars.
    # For example:
        # "aabcccccaaa" => "a2b1c5a3"
    # If the output isn't smaller than input, return input.

    # Assumptions:
        # "smaller" means "shorter"


    def compress(str)
        ary = str.split("")
        i = 0
        j = 1
        result = ""

        while i < ary.length
            if result.length >= str.length
                p str
                return str
            end

            if j >= ary.length
                result << ary[i] << (j - i).to_s
                if result.length >= str.length
                    p str
                    return str
                end
                
                p result
                return result
            end
            
            if ary[i] == ary[j]
                j += 1
            else
                result << ary[i] << (j - i).to_s
                i = j
                j = i + 1
            end
        end
    end

    example = "aabcccccaad"
    # example = "abcd"

    compress(example)