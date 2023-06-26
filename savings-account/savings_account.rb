module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 5000
      2.475
    elsif balance >= 1000
      1.621
    elsif balance >= 0
      0.5
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    interest_rate = interest_rate(balance)
    balance + (balance * interest_rate / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    balance = current_balance

    while balance < desired_balance
      balance = annual_balance_update(balance)
      years += 1
    end

    years
  end
end
