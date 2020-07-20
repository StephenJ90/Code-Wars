=begin
PROBLEM
=======
Let us consider this example (array written in general format):

ls = [0, 1, 3, 6, 10]

Its following parts:

ls = [0, 1, 3, 6, 10]
ls = [1, 3, 6, 10]
ls = [3, 6, 10]
ls = [6, 10]
ls = [10]
ls = []
The corresponding sums are (put together in a list): 
[20, 20, 19, 16, 10, 0]

The function parts_sums (or its variants in other languages) will take as 
parameter a list ls and return a list of the sums of its parts as defined above.

Other Examples:
ls = [1, 2, 3, 4, 5, 6] 
parts_sums(ls) -> [21, 20, 18, 15, 11, 6, 0]

PEDAC
=====

sum up the entire list, add that sum to an array, move to the next index
in the list and add the sum of those numbers to the array and so on.

inputs: array of integers
outputs: array of integers ( sums from input array)

algorithm:
- use times method to iterate the same number of times as the size of the
array
- intialize result array
- initialize a counter to represent the index
- each iteration, add the sum of the numbers to a result array

=end

def parts_sums(ls)
  result = []
  list_size = ls.size + 1

  list_size.times do |n|
    result << ls[n..-1].sum
  end
  result
end

p parts_sums([0, 1, 3, 6, 10]) == [20, 20, 19, 16, 10, 0]
p parts_sums([1, 2, 3, 4, 5, 6]) == [21, 20, 18, 15, 11, 6, 0]
p parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]) == [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
