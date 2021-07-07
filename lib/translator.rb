require 'yaml'
require 'pry'

emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  get_meaning = {}
  get_emoticon = {}
  emoticons = YAML.load_file(emoticons)
  emoticons.each do |english, emo|
    get_meaning[emo[1]] = english
    get_emoticon[emo[0]] = emo[1]
  end
  {:get_meaning => get_meaning, :get_emoticon => get_emoticon}
end

def get_japanese_emoticon(emoticons, emoji)
  library = load_library(emoticons)
  translation = library[:get_emoticon][emoji]
  if library[:get_emoticon][emoji] == nil 
  return "Sorry, that emoticon was not found"
  end
  translation
end

def get_english_meaning(emoticons, emoji)
  library = load_library(emoticons)
  translation = library[:get_meaning][emoji]
  if library[:get_meaning][emoji] == nil 
  return "Sorry, that emoticon was not found"
  end
  translation
end
