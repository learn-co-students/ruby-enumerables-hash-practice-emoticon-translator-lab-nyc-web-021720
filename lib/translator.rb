# require modules here
#require "home/dazzling-node-4320/ruby-enumerables-hash-practice-emoticon-translator-lab-nyc-web-021720/lib/translator.rb"
#require "../lib/translator.rb"
require_relative "../lib/translator.rb"
require "yaml"


def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end



def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end



  def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon)
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end


=begin
  Notes to self:
  Had a lot of trouble with this lab.
  Had to resort to a finished GitHub repo by pedrotp.

  I tend to have trouble passing data between different files, using file paths etc...
  Need to work on 'require', loading files, etc...

=end


=begin     ***DIRECTIONS***

1. Write a method, `load_library`, that loads the `emoticons.yml` file.

2. Write a method, `get_japanese_emoticon`, that will take a traditional Western
   emoticon, like `:)` and translate it to its Japanese version. It will rely
   `load_library` to work. Refer to the table below for translations.

3. Write a method, `get_english_meaning`, that takes a Japanese emoticon and
   returns its meaning in English. This method will also rely on `load_library` to
   first load the YAML file.

=end

=begin
*** Older attempt at #load_library method with pretty printing -
  the emoticon keys inside the 'get_emoticon' hash [DO NOT] point to their Japanese equivalents.

def load_library (file_path)

  emoticons = YAML.load_file(file_path)
  pp emoticons

  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |meaning, translations|
    hash["get_meaning"][emoticons[1]] = meaning
    hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end

  puts hash["get_emoticon"]

  pp hash
  hash
end
=end
