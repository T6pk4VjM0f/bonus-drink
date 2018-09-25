class BonusDrink
  def self.total_count_for(amount)
    # Note: Someone might put "3.5" bottles that are impossible.
    #   Therefore, it should be banned.
    raise ArgumentError, "The argument 'amount' should be an integer." unless amount.is_a? Integer
    # In addition to above, negative bottle number is impossible: Where's the "real" bottles?
    #   Therefore, it should also be banned.
    raise ArgumentError, "The argument 'amount' should be positive." if amount < 0

    # And, let's keep it simple.
    return 0 if amount < 1
    addition = total_count_for(amount / 3)
    addition += 1 if (addition + amount) % 3 == 0
    return amount + addition
  end
end

if __FILE__ == $0
  puts BonusDrink.total_count_for 100
end
