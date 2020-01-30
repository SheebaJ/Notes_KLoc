require './Pali.rb'
RSpec.describe Pali do
  describe '#check_for_palindrome' do
    let(:palindrome) { Pali.new }

    it 'returns true when given a palindrome' do
      word = 'level'

      result = palindrome.check_for_palindrome(word)

      expect(result).to be true
    end

    it 'returns false when not given a palindrome' do
      word = 'fox'

      result = palindrome.check_for_palindrome(word)

      expect(result).to be false
    end
  end
end
