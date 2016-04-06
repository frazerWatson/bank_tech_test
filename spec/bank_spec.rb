require 'spec_helper'
require 'bank'

describe Bank do
  it 'responds to deposit' do
    expect(subject).to respond_to 'deposit'
  end

describe '.deposit' do
  it 'deposits money' do
    expect(subject.deposit(100)).to eq 'You desposited £100 into your account.'
  end
end

describe '.balance' do
  before(:each) do
      subject.deposit(100)
    end
  it 'returns balance' do
    expect(subject.balance).to eq 'Your current balance is £100'
    end
  end

describe '.withdraw' do
  before(:each) do
      subject.deposit(100)
    end
  it 'withdraws money' do
    expect(subject.withdraw(45)).to eq 'You have withdrawn £45 from your account.'
  end
  it 'raises error if withdrawal > account' do
    expect{subject.withdraw(110)}.to raise_error 'Insufficient funds.'
  end
end
end