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

# decoder
def decode_char(code)
  MORSE.key(code)
end

# Decode word function
def decode_word(word)
  text = ''
  word.split.each do |c|
    text += decode_char c
  end 
  return text
end

puts decode_word("-- -.--")
