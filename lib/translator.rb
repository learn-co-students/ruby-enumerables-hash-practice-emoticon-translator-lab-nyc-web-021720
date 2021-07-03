# require modules here
require 'yaml'

def load_library(file="./lib/emoticons.yml")
  # code goes here'
  emoticons = YAML.load_file(file)
  #japanese_emoticon => meaning

  japanese_emoticon={}
  english_emoticon ={}
  emoticons.each do |key,value|
    english_emoticon[value[0]]=value[1]
    japanese_emoticon[value[1]]=key
  end



  {:get_meaning =>japanese_emoticon,:get_emoticon=>english_emoticon}
end

def get_japanese_emoticon(file="./lib/emoticons.yml",emoticon)
  # code goes here
  emoticons = load_library(file)

  if emoticons[:get_emoticon].keys.include?(emoticon)
      return emoticons[:get_emoticon][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file="./lib/emoticons.yml",emoticon)
  # code goes here
  emoticons = load_library(file)
  if emoticons[:get_meaning].keys.include?(emoticon)
    return emoticons[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

pp load_library
