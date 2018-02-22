require "rspec"
require "tdd"

describe "my_uniq" do
  subject(:arr) { [1, 2, 1, 3, 3] }
  it "remove duplicate values from an array" do
      expect(my_uniq(arr)).to eq(arr.uniq)
      # expect([1, 2, 3, 1]).to contain_exactly(1, 2, 1, 3)
    end
end

RSpec.describe Array do
  describe "Array#two_sum" do
    subject(:arr) { [-1, 0, 2, -2, 1] }
    it 'return the idx of the elements sum to 0' do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end

describe "my_transpose" do
  subject(:arr) { [[0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8]] }
    it "convert between row & columns" do
      expect(my_transpose(arr)).to eq([[0, 3, 6],
                                  [1, 4, 7],
                                  [2, 5, 8]])
  end
end

describe "stock_picker" do
  subject(:arr) { [5, 1, 2] } #=> [1, 2]
  it "output the profitable buy and sell date in index" do
    expect(stock_picker(arr)).to eq([1, 2])
  end

end
