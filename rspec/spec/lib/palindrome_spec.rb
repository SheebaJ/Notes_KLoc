class Palindrome
    def initialize(x)
        @x=x
    end

    def check_for_palindrome
     if !@x.nil? and !@x.is_a?(String) 
        @x.to_s.reverse == @x.to_s
     else
        return false
    end
    end
end

RSpec.describe Palindrome do
    
  describe '#check_for_palindrome' do
      context 'when x is a number' do
        subject{described_class.new(121)}
        it 'returns true' do
            expect(subject.check_for_palindrome).to be true
        end
    end

    context 'when x is a number but not palindrome' do
        subject{described_class.new(12134)}
        it 'returns false' do
            expect(subject.check_for_palindrome).to be false
        end
    end

    context 'when x is a string' do
        
        subject{described_class.new("1232")}
        it 'returns false' do
            expect(subject.check_for_palindrome).to be false
        end
    end

    context 'when x is empty' do
        subject{described_class.new(' ')}
        it 'returns false' do
            subject.check_for_palindrome.should == false
        end
    end
    
    context 'when x is empty' do
        subject{described_class.new('')}
        it 'returns false' do
            subject.check_for_palindrome.should == false
        end
    end
    
    context 'when x is negative' do
        subject{described_class.new(-12-2-4)}
        it 'returns false' do
            subject.check_for_palindrome.should == false
        end
    end

end
end
