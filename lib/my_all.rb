require 'pry'

def my_all?(collection)
  i = 0
  vals = []
 while i < collection.length
   vals.push(yield(collection[i]))
   i = i + 1   #i += 1 does the same thing. Use this if it's easier for you.
 end
 vals.all?
end
