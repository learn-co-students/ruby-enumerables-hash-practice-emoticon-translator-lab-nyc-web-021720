require "yaml"
require "pry"
def load_library(file_path)
emote_file = YAML.load_file(file_path)
  translator = {
    get_meaning: {},
    get_emoticon: {},
  }
  emote_file.each do |str_def, eng_jap_emotes|
    jap_emote = eng_jap_emotes.last
      if !translator[:get_meaning][jap_emote]
        translator[:get_meaning][jap_emote] = str_def
      end
    end
  emote_file.each do |str_def, eng_jap_emotes|
    eng_emote = eng_jap_emotes.first
      if !translator[:get_emoticon][eng_emote]
        translator[:get_emoticon][eng_emote] = eng_jap_emotes.last

      end
    end
  translator
end

def get_japanese_emoticon(file_path, emoticon)
  emote_file = YAML.load_file(file_path)
  emote_translation = load_library(file_path)[:get_emoticon][emoticon]
  if !emote_translation
    return "Sorry, that emoticon was not found"
  else
    emote_translation
  end
end



# :get_emoticon=>
#   {"O:)"=>"☜(⌒▽⌒)☞",
#    ">:("=>"ヽ(ｏ`皿′ｏ)ﾉ",
#    ":O"=>"(ΘεΘ;)",
#    "%)"=>"(゜.゜)",
#    ":$"=>"(#^.^#)",
#    "><>"=>">゜))))彡",
#    "8D"=>"(^0_0^)",
#    "=D"=>"(￣ー￣)",
#    ":)"=>"(＾ｖ＾)",
#    ":*"=>"(*^3^)/~☆",
#   ":'("=>"(Ｔ▽Ｔ)",
#   ":o"=>"o_O",
#   ";)"=>"(^_-)"}}
#get_japanese_emoticon
# {:get_meaning=>
#   {"☜(⌒▽⌒)☞"=>"angel",
#    "ヽ(ｏ`皿′ｏ)ﾉ"=>"angry",
#    "(ΘεΘ;)"=>"bored",
#    "(゜.゜)"=>"confused",
#    "(#^.^#)"=>"embarrased",
#    ">゜))))彡"=>"fish",
#    "(^0_0^)"=>"glasses",
#    "(￣ー￣)"=>"grinning",
#    "(＾ｖ＾)"=>"happy",
#    "(*^3^)/~☆"=>"kiss",
#    "(Ｔ▽Ｔ)"=>"sad",
#    "o_O"=>"surprised",
#    "(^_-)"=>"wink"},
# returns the Japanese equivalent of an English grinning (FAILED - 1)
# returns the Japanese equivalent of an English happy (FAILED - 2)
# returns the Japanese equivalent of an English sad (FAILED - 3)
# returns an apology message if the argument is not a known emoticon (FAILED - 4)

def get_english_meaning(file_path, emoticon)
  emote_file = YAML.load_file(file_path)
  emote_translation = load_library(file_path)[:get_meaning][emoticon]
  if !emote_translation
    return "Sorry, that emoticon was not found"
  else
    emote_translation
  end
end
