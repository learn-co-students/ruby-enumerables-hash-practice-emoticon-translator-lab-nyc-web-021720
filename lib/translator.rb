# require modules here
require'yaml'
#we required yaml to obtain the hash
def load_library(file)
 results = {"get_meaning" => {}, "get_emoticon" => {}}
 # we created a new hash which contains keys "get_meaning& get_emoticon pointing to an empty hash"
    YAML.load_file(file).each do |meaning, emoticon|
      #we used the YAML.load_file with an argument of file to load the file and we itterated through it 
    eng, jan = emoticon
     results["get_meaning"][jan] = meaning
# here were going to be going inot the result hash and set the key "get_meaning" to point to the japanese emoticons(jan) then that points to meanings(ex:angel,angry,bored,(=meaning)
#the outcome is the get_meaning:{☜(⌒▽⌒)☞:angel...etc.
     results["get_emoticon"][eng] = jan
   #  for this one we put the key "get_emoticon" to points to the value of a hash , in the hash we have the english emoticons as keys which points to the values of the japanese emoticons
   #the outcome is "get_emoticon:{ O:) : ☜(⌒▽⌒)☞...etc.-(this translates thes english emoticon to the japanese one)
  end
  results
end

def get_japanese_emoticon(file,emoticon)
 emoticons=load_library(file)["get_emoticon"][emoticon]
 if emoticons
   return emoticons
 else 
   "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file,emoticon)
   emoticons=load_library(file)["get_meaning"][emoticon]

  if emoticons
   return emoticons
 else 
   "Sorry, that emoticon was not found"
end
  
end


