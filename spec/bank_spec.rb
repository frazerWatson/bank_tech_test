require 'spec_helper'
require 'bank'

describe Bank do
  it 'responds to deposit' do
    expect(subject).to respond_to 'deposit'
  end

  it 'returns ammount' do
    expect(subject.deposit(100)).to eq '100'
  end
end





# describe StringCalculator do
#   it 'responds to add' do
#     expect(subject).to respond_to 'add'
#   end

#   it 'returns 0 for empty string' do 
#     expect(subject.add("")).to eq 0
#   end

#   it 'returns fixnum if > 0' do
#     expect(subject.add("1")).to eq 1
#   end

#   it 'returns "fixnum, fixnum" if past two strings' do
#     expect(subject.add("1", "2")).to eq 1, 2
#   end
# end
