$letter_morse = {
  a:".-", b:"-...", c:"-.-.", d:"-..", e:".", f:"..-.", g:"--.",
  h:"....", i:"..", j:".---", k:"-.-", l:".-..", m:"--", n:"-.",
  o:"---", p:".--.", q:"--.-", r:".-.", s:"...", t:"-",u:"..-",
  v:"...-", w:".--", x:"-..-", y:"-.--", z:"--.."
}
def decode_char(code)
  $letter_morse.each do |key,value|
    if value == code
      puts key.upcase
      return key.upcase
    end
  end
end

def decode_word(code)
  word =""
  items = code.split
  for item in items
    $letter_morse.each do |key,value|
      word += key.to_s if value == item
    end
  end
  puts word
  return word
end

decode_char("--..")
decode_word("-- -.--")