require 'pry'


# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
   
  if name_hash == {}#if the hash returns empty its value is nil.
    return nil
 
  else
    cost_array = name_hash.collect {|name, cost| cost}#creates an array for the cost so we can run a method for it.
      lowest_value = nil  

    cost_array.each do |cost|
      temp = cost_array[0]
        if cost < temp
          lowest_value = cost
        else
          lowest_value = temp
      end
    end

    name_hash.each do |name, cost|
      if cost == lowest_value
        return name
      binding.pry
      end
    end

  end

end