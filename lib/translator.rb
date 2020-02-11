require "yaml"
require 'pp'

def load_library(path)
  
 emoticons = YAML.load_file(path)

  new_hash = {}
  new_hash[:get_emoticon]= {}
  new_hash[:get_meaning] = {}

  emoticons.each do |key,array|
    new_hash[:get_emoticon][array[0]] = array[1] #Why can't I just put "array[1]"
    new_hash[:get_meaning][array[1]] = key
  end
  pp new_hash
  
end

def get_japanese_emoticon (path, emoticon)
  result = load_library(path)[:get_emoticon][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(path,emoticon)
  result = load_library(path)[:get_meaning][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end






 #thing = YAML.load_file(path)
  #pp thing
  
  #newHash = {}
  #newHash[:get_meaning]= {} 
  #newHash[:get_emoticon] = {}
  
  #thing.each { |key,array|
   # newHash[:get_meaning] = key
  #  newHash[:get_emoticon][array[0]] = thing[key][1]
  #}
  #pp newHash