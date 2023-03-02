LETTER_MORSE = {
  a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.', g: '--.',
  h: '....', i: '..', j: '.---', k: '-.-', l: '.-..', m: '--', n: '-.',
  o: '---', p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-', u: '..-',
  v: '...-', w: '.--', x: '-..-', y: '-.--', z: '--..'
}.freeze

def decode_char(code)
  LETTER_MORSE.each do |key, value|
    return key.upcase if value == code
  end
end

def decode_word(code)
  word = ''
  items = code.split
  items.each do |item|
    letter = decode_char(item)
    word += letter.to_s
  end
  word
end

def decode(code)
  message = []
  items = code.split(/   /)
  items.each do |item|
    word = decode_word(item)
    message.push(word)
  end
  message.join(' ')
end

puts decode_char('--..')
puts decode_word('-- -.--')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
