# require modules here
require "yaml"

def load_library(file="./lib/emoticons.yml")
  emoticons = YAML.load_file(file)
  emoticons_hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each do |type, language|
    emoticons_hash[:get_meaning][language[1]] = type
    emoticons_hash[:get_emoticon][language[0]] = language[1]
  end 
  return emoticons_hash
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  library = load_library(file)
  if library[:get_emoticon].include?(emoticon)
    library[:get_emoticon][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
  library = load_library(file)
  if library[:get_meaning].include?(emoticon)
    library[:get_meaning][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end
end