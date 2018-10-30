require 'pry'

def my_all?(collection)
  block_returned=[]
  collection.each do |ele|
    block_returned << yield(ele)
  end
  block_returned.all?{|e| e ? true : false}
end

# p my_all?([1,2,3]) {|i| i < 2}
