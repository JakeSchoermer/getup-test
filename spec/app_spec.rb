require './app.rb'

RSpec.describe do

  describe 'provided test' do
    it 'is correct for the GetUp! test values' do
      expect(telephoneWords([2,5]))
        .to eql(["AJ", "AK", "AL", "BJ", "BK", "BL", "CJ", "CK", "CL"])
    end
  end

  describe '3 values' do

    let(:res) do
      ["AJA", "AJB", "AJC", "AKA", "AKB", "AKC", "ALA", "ALB", "ALC",
      "BJA","BJB", "BJC", "BKA", "BKB", "BKC", "BLA", "BLB", "BLC", "CJA",
      "CJB", "CJC", "CKA", "CKB", "CKC", "CLA", "CLB", "CLC"]
    end

    it 'is correct for three values' do
      expect(telephoneWords([2,5,2])).to eql res
    end

  end
end
