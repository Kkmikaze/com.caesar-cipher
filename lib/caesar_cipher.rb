class CaesarCipher
  ALPHABET = ('A'..'Z').to_a.freeze

  def initialize(shift)
    @shift = shift % ALPHABET.size
  end

  def encrypt(text)
    process_text(text, @shift)
  end

  def decrypt(text)
    process_text(text, -@shift)
  end

  private

  def process_text(text, shift)
    text.upcase.chars.map { |char| shift_char(char, shift) }.join
  end

  def shift_char(char, shift)
    return char unless ALPHABET.include?(char)

    new_index = (ALPHABET.index(char) + shift) % ALPHABET.size
    ALPHABET[new_index]
  end
end
