# require modules here
require 'yaml'

def load_library(file_path)
  new_hash = {}
  emoticons = YAML.load_file(file_path)
  
  emoticons.each_pair do |name, symbol_array|
      new_hash[name] ={:english => symbol_array[0], :japanese => symbol_array[1]}
  end
  
  new_hash
end




def get_english_meaning(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  language = emoticon_hash.key(emoticon)
  emoticon_hash.key(language)
  
end



def get_japanese_emoticon
  
end

# puts load_library('lib/emoticons.yml')