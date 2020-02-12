require "yaml"
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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
