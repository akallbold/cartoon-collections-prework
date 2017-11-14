require 'pry'

def roll_call_dwarves(array)
  array.each_with_index do |name,i|
    place=i+1
    puts "#{place} #{name}\n"
  end
end

def summon_captain_planet(array)
  new_array=[]
  array.map! do |name|
    cap_name=name.capitalize
    new_array.push("#{cap_name}!")
  end
  new_array
end

def long_planeteer_calls(array)
  array.any? do |word|
    word.length>4
  end
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]
  output=""
  array.each do |name|
    if cheese_types.include?(name)
      return output
      binding.pry
    else return nil
    end
  end
end

find_the_cheese(["apple","cheddar"])
