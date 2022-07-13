MORSE = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  '0' => '-----',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  ' ' => ' '
}.freeze

# Decode a character
def decode_char(code)
  MORSE.key(code).upcase
end

# Decode a word
def decode_word(word)
  text = ''
  word.split.each do |c|
    text += decode_char c
  end
  text
end

# Decode a sentence
def decode(sentence)
  text = ''
  sentence.split(/   /).each do |w|
    text += "#{decode_word(w)} "
  end
  text
end

puts decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
