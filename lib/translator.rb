require "yaml"
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticon_hash = {:get_meaning => {}, :get_emoticon => {}}

  emoticons.each do |type,lan_ver|
    emoticon_hash[:get_meaning][lan_ver[1]] = type
    emoticon_hash[:get_emoticon][lan_ver[0]] = lan_ver[1]
  end 
  return emoticon_hash
end

def get_japanese_emoticon(file, emoticon)
   emoticon_library = load_library(file)
   if emoticon_library[:get_emoticon].include?(emoticon)
      emoticon_library[:get_emoticon][emoticon]
    else 
      "Sorry, that emoticon was not found"
    end 
  end

def get_english_meaning(file,emoticon)
  emoticon_library = load_library(file)
  if emoticon_library[:get_meaning].include?(emoticon)
    emoticon_library[:get_meaning][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end 
end