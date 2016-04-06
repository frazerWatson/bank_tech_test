require 'spec_helper'
require 'bank'

describe Bank do
  it 'responds to deposit' do
    expect(subject).to respond_to 'deposit'
  end
end