require "yaml"

def load_library(file_path)
  
  emoticons = YAML.load_file(file_path)
  
  myHash = { 
    'meaning' => {},
    'emoticon' => {}
  }
  
  emoticons.each do |key, value|
    myHash['emoticon'][value[0]] = emoticons[key][1]
    myHash['meaning'][value][1]] = key
  end
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end