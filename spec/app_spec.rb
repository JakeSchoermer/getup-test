require './app.rb'

RSpec.describe do

  describe 'test' do
    it 'returns a value' do
      expect(Telephone.telephoneWords([])).to eql 'abc'
    end
  end

end
