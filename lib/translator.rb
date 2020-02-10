require "yaml"
require 'pry'

 

# require modules here

def load_library(path)
  emoticons = YAML.load_file(path)
  emo_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  emoticons.each do | emotion,array|
    emo_hash['get_meaning'] 
    
  # code goes here
end

def get_japanese_emoticon
  load_library
  # code goes here
end

def get_english_meaning
  load_library
  # code goes her
end

















