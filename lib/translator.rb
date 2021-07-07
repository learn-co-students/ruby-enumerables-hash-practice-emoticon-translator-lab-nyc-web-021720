require 'yaml'

def load_library(file)
 new = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file).each do |meaning, emoticons|
   new["get_meaning"][emoticons[1]]= meaning
   new["get_emoticon"][emoticons[0]] = emoticons[1]  #why do we have to have [emoticons[1]] instead of [emoticons][1]
end
new
end
  
 #first we created a hash that has get_meaning and get_emoticon key pointing to an empty hash. we then called upon YAML to load the file that contains the hash of the english and japanese emojis witht there meanings. We then iterated through the hash and between the pipes we have meaning which represend the keys (which are mad,sad etc..)and emoticons which represent the value(contain both english and japanese emoticon)  then we set the get_meaning key to point to the hash and the it contains the key of the  japanese emoticon which now point to the meaning(again meaning represents sad, mad etc..) then  in the second we have get_emoticon it pionts to a hash and in that hash we have the english emoticon pointing to the japanese emoticon...
 


def get_japanese_emoticon(file,emoticon)
path_file = load_library(file)
if path_file["get_emoticon"][emoticon]
  return path_file["get_emoticon"][emoticon]
else 
  "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file,emoticon)
   file_path = load_library(file)
   if file_path["get_meaning"][emoticon]
     return file_path["get_meaning"][emoticon]
   else
      "Sorry, that emoticon was not found"
  end
  

end