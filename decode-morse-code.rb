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

decode_char("--..")