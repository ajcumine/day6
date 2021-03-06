def provide_mortgage?(salary, deposit, property_value, bankrupt)
  loan_amount = deposit / property_value >= 0.75 ? 0 : property_value - deposit
  min_deposit = property_value < 650000 ? 0.05 : 0.2
  max_multiplier = 5 # how many annual incomes can be borrowed
  !bankrupt && (deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount)
end

puts provide_mortgage?(80000, 100000, 500000, true)

