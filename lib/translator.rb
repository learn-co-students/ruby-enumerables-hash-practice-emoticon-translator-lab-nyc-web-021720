require 'yaml'

def load_library(file)
  
  dictionary = YAML.load_file(file)
  
  final_result = {:get_meaning => {}, :get_emoticon => {}}
  
  dictionary.each do |meaning, emoticon|
    
    final_result[:get_meaning][emoticon[1]] = meaning
    
    final_result[:get_emoticon][emoticon[0]] = emoticon[1]
  
  end 
  
  return final_result

end

def get_japanese_emoticon(file, emoticon)
  
  dictionary = load_library(file)
  
  if dictionary[:get_emoticon].include?(emoticon)
    
    dictionary[:get_emoticon][emoticon]
  
  else 
    
    "Sorry, that emoticon was not found"
  
  end
  
end

def get_english_meaning(file, emoticon)
  
  dictionary = load_library(file)
  
  if dictionary[:get_meaning].include?(emoticon)
    
    dictionary[:get_meaning][emoticon]
  
  else 
    
    "Sorry, that emoticon was not found"
  
  end
  
end 