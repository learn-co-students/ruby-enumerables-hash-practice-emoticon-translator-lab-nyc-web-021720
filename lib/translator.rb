# require modules here
require "yaml"


def load_library(path)
  emoticons = YAML.load_file(path)

  emoticon_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  emoticons.each do |key, value|
    emoticon_hash['get_emoticon'][value[0]] = emoticons[key][1]
    emoticon_hash['get_meaning'][value[1]] = key
  end
  emoticon_hash
end

def get_japanese_emoticon(path, emoticon)
  emoticons_lib = load_library(path)['get_emoticon'][emoticon]
  emoticons_lib ? emoticons_lib : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  emoticons_lib = load_library(path)['get_meaning'][emoticon]
  emoticons_lib ? emoticons_lib : "Sorry, that emoticon was not found"
end
