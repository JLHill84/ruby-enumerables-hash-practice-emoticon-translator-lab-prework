require "yaml"

def load_library(file_path)
  
  emoticons = YAML.load_file(file_path)
  
  myHash = { 
    'meaning' => {},
    'emoticon' => {}
  }
  
  emoticons.each do |key, value|
    myHash['emoticon'][value[0]] = emoticons[key][1]
    myHash['meaning'][value[1]] = key
  end
  myHash
end

def get_japanese_emoticon(file_path, emoticon)
  result load_library(file_path)['emoticon'][emoticon]
  result ? result : "Results not Found"
  
end

def get_english_meaning(file_path, emoticon)
  result load_library(file_path)['meaning'][emoticon]
  result ? result : "Results not Found"
end