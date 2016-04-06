class Bank

  attr_accessor :account

  def deposit(money_in)
    @my_account = @account.to_i + money_in
    p 'You desposited £' + money_in.to_s + ' into your account.'
  end

  def balance
    p 'Your current balance is £' + @my_account.to_s
  end

  def withdraw(money_out)
    @my_account = @account.to_i - money_out
    p ''
  end


end


