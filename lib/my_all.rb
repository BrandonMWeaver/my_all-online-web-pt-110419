require 'pry'

def my_all?(collection)
  index = 0
  return_values = []
  while index < collection.size do
    return_values << yield(collection[index])
    index += 1
  end
  
  if return_values.include?(false)
    return false
  else
    return true
  end
end
