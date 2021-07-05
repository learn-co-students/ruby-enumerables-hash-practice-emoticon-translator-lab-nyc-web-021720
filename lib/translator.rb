# require modules here
require "yaml"
require "pry"
require "pp"

def load_library(library)
  # code goes here
  emoticons = YAML.load_file(library)
  #pp emoticons
  emoticons
  emote = {:get_meaning => {}, :get_emoticon => {}}
  get_meaning =
  emoticons.each do |key, value|
    emote[:get_meaning][value[1]] = key
    emote[:get_emoticon][value[0]] = value[1]
  end
  puts emote
  emote
end

load_library("./lib/emoticons.yml")
def get_japanese_emoticon(filepath, english_emote)
  # code goes here
  library = load_library(filepath)
  library[:get_emoticon].each do |key, value|
    if english_emote == key
      puts value
      return value
    end
  end
  return "Sorry, that emoticon was not found"
end

get_japanese_emoticon("./lib/emoticons.yml", ":)")
def get_english_meaning(filepath, japanese_emote)
  # code goes here
  library = load_library(filepath)
  library[:get_meaning].each do |key, value|
    if japanese_emote == key
      puts value
      return value
    end
  end
  return "Sorry, that emoticon was not found"
end
