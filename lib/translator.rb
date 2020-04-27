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
    
    if emoticon_hash[key][:japanese] == emoticon
      return key
    end
  
  end
      # if it falls out of the loop and never 'returned'
    # it means it is not in the load_library
    return "Sorry, that emoticon was not found"
  
end



def get_japanese_emoticon(file_path, emoticon)
   emoticon_hash = load_library(file_path)
  
  emoticon_hash.each do |key, value|
    
    if emoticon_hash[key][:english] == emoticon
      return emoticon_hash[key][:japanese]
    end
  
  end
      # if it falls out of the loop and never 'returned'
    # it means it is not in the load_library
    return "Sorry, that emoticon was not found"
  
end
