require 'spec_helper'
require 'caesar_cipher'

RSpec.describe CaesarCipher do
  let(:cipher) { CaesarCipher.new(3) }

  it 'encrypts text correctly' do
    expect(cipher.encrypt('HELLO')).to eq('KHOOR')
  end

  it 'decrypts text correctly' do
    expect(cipher.decrypt('KHOOR')).to eq('HELLO')
  end

  it 'handles non-alphabet characters correctly' do
    expect(cipher.encrypt('HELLO, WORLD!')).to eq('KHOOR, ZRUOG!')
  end
end
