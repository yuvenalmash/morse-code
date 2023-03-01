$letter_morse = {
  a:".-", b:"-...", c:"-.-.", d:"-..", e:".", f:"..-.", g:"--.",
  h:"....", i:"..", j:".---", k:"-.-", l:".-..", m:"--", n:"-.",
  o:"---", p:".--.", q:"--.-", r:".-.", s:"...", t:"-",u:"..-",
  v:"...-", w:".--", x:"-..-", y:"-.--", z:"--.."
}

def decode_char(code)
  $letter_morse.each do |key,value|
    return key.upcase if value == code
  end
end

def decode_word(code)
  word =""
  items = code.split
  for item in items
    letter = decode_char(item)
    word += letter.to_s
  end
  return word
end

def decode(code)
  message = []
  items = code.split(/   /)
  for item in items
    word = decode_word(item)
    message.push(word)
  end
  message =  message.join(" ")
  return message
end

puts decode_char("--..")
puts decode_word("-- -.--")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")