MORSE_CODE = {
  '.-'    => 'A',
  '-...'  => 'B',
  '-.-.'  => 'C',
  '-..'   => 'D',
  '.'     => 'E',
  '..-.'  => 'F',
  '--.'   => 'G',
  '....'  => 'H',
  '..'    => 'I',
  '.---'  => 'J',
  '-.-'   => 'K',
  '.-..'  => 'L',
  '--'    => 'M',
  '-.'    => 'N',
  '---'   => 'O',
  '.--.'  => 'P',
  '--.-'  => 'Q',
  '.-.'   => 'R',
  '...'   => 'S',
  '-'     => 'T',
  '..-'   => 'U',
  '...-'  => 'V',
  '.--'   => 'W',
  '-..-'  => 'X',
  '-.--'  => 'Y',
  '--..'  => 'Z',
}

def decode_char(c)
  return MORSE_CODE[c]
end 

def decode_word(word)
  word.split(" ").map { |c| decode_char(c) }.join
end

def decode(message)
  message.split("   ").map{ |word| decode_word(word) }.join(" ")
end

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
