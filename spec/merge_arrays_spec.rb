require 'spec_helper.rb'

describe '.merge' do
  it "returns merged array for given two sorted arrays" do
    a = [-4, -1, 1, 2, 4, 7, 9, 10]
    b = [-1, 0, 2, 3, 5, 8, 9]

    expect(merge(a, b)).to eq([-4, -1, -1, 0, 1, 2, 2, 3, 4, 5, 7, 8, 9, 9, 10])
  end
end