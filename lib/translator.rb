# require modules here
require "yaml"
def load_library(file)
library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file, english_emoticon)
  library = load_library(file)
  output = library["get_emoticon"][english_emoticon]
  if output
    output
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, english_emoticon)
 library = load_library(file)
  output = library["get_meaning"][english_emoticon]
  if output
    output
  else
    "Sorry, that emoticon was not found"
  end
end