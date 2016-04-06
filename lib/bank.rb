class Bank

  def account
    attr_accessor_with_default :account, 0
  end

  def deposit(money_in)
    @account = @account.to_i + money_in
    p 'You desposited £' + money_in.to_s + ' into your account.'
  end

  def balance
    p 'Your current balance is £' + @account.to_s
  end

  def withdraw(money_out)
    raise 'Insufficient funds.' if money_out > @account
    @account = @account.to_i - money_out
    p 'You have withdrawn £' + money_out.to_s + ' from your account.'
  end

end


