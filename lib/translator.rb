# require modules here
require "yaml"
require "pry"
def load_library(emoticon)
  
  original_list = YAML.load_file(emoticon)
  
  new_hash = {:get_meaning => {}, :get_emoticon => {}}
   original_list.each do |key,array_value|
     english = array_value[0] 
     japanese = array_value[1]
     #binding.pry
    # new_hash[:get_meaning] = array_value[0]
     new_hash[:get_meaning][array_value[1]] = key
     new_hash[:get_emoticon][array_value[0]] = japanese 
     
   end
  # binding.pry
return new_hash


end

def get_japanese_emoticon(file_path, emoticon)
  get_japanese_hash = {}
   
 

  new_hash = load_library(file_path)
  # binding.pry
  if  new_hash[:get_emoticon][emoticon]  
    return new_hash[:get_emoticon][emoticon] 
  
  
 #  if   key == "=D"  
    
get_japanese_hash = value
    
    # binding.pry
  #end 
 # if key ==  ":)"
   #get_japanese_hash = value
   
# end
 #if key ==  ":'(" 
   #get_japanese_hash = value
   
#end
 
#end
#binding.pry
# return  get_japanese_hash
else
  return memo = "Sorry, that emoticon was not found"
# binding.pry 
 end  
 
  # code goes here
end

def get_english_meaning(file_path,emoticon)
  new_hash = load_library(file_path)
#  binding.pry
  
  
  if  new_hash[:get_meaning][emoticon]
   return new_hash[:get_meaning][emoticon]
  else
    return new_hash = "Sorry, that emoticon was not found"
   # binding.pry
   end 
  # code goes here
end