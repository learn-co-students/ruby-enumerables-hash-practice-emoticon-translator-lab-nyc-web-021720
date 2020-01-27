# require modules here
require'yaml'

def load_library(file)
  results = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file).each do |meaning, emoticon|
    eng, jan = emoticon
     results["get_meaning"][jan] = meaning
     results["get_emoticon"][eng] = jan
  end
  results
end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file) 
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file,emoticon)
emoticons= load_library(file)
result= emoticons["get_meaning"][emoticon]
if result
  result
else
     "Sorry, that emoticon was not found"

  end
end
