require "yaml"
require 'pry'

 

# require modules here

def load_library(path)
  emoticons = YAML.load_file(path)
  emo_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  emoticons.each do | emotion,array|
    # binding.pry
     emo_hash['get_meaning'][array[1]] = emotion
     emo_hash['get_emoticon'][array[0]] = array[1]
  end 
  emo_hash 
  # code goes here
end

def get_japanese_emoticon(path, emoticon )
  emoticons =  load_library(path)
 # binding.pry 
  emoticon_japanese = emoticons['get_emoticon'][emoticon]
  if emoticons["get_emoticon"].include?(emoticon) 
    emoticons["get_emoticon"][emoticon]
  else 
    "Sorry, that emoticon was not found"
  
end
  
end

def get_english_meaning(path, emoticon)
   emoticons = load_library(path)
  
  if emoticons['get_meaning'].include?(emoticon)
    emoticons["get_meaning"][emoticon]
  else 
     "Sorry, that emoticon was not found"
   end
end

















