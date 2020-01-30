require 'rspec'
require "./dog.rb"

RSpec.describe Dog do
    describe '#bark' do
        it 'returns wolf' do
            expect(subject.bark).to eq('wolf')
        end
    end

    describe '#hungry?' do
        context 'when hunger_level is more than 5' do
            subject{described_class.new(hunger_level: 7)}
            it 'returns true' do
                expect(subject).to be_hungry
            end
        end

        context 'when hunger_level is 5 or less' do
        subject{described_class.new(hunger_level: 5)}
            it 'returns false' do
                expect(subject).to_not be_hungry
            end
        end
    end
end