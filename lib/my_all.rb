require 'pry'

#summart
#yield gives you the elements of the collection to work on
#you then save them to an array.
#if you want the final to be true or false rather than elements of array
#you add another step, an include? etc.

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values.push(yield(collection[i]))
    #Three steps
    #First we add yield keyword to yield each element of the block
    #Second we, save the the return values to an array which we declare
    #before the while loop
    i = i + 1
  end
    #Third, we want the final to be true or false for each element in
    #our block_return_values as that is what all? returns
    if block_return_values.include?(false)
      false
    else
      true
  end
end
#my_all?([1,2,3]) {|i| i < 2}
#block_return_values = [true, false, false]
