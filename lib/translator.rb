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
  
  emoticon_hash.each do |key, value|
    
    puts "key #{key} value #{value}"
    if emoticon_hash[key][:japanese] == emoticon
    #   emoticon_hash[key]
    puts "ELISHEVA"
    end
  end
    
    
  # language = emoticon_hash.key(emoticon)
  # emoticon_hash.key(language)
  
end



def get_japanese_emoticon
  
end

puts get_english_meaning('lib/emoticons.yml', "(＾ｖ＾)")