hash = {}
# stop_condition = "\n"

while line = gets
  currency = line.split[0]
  transaction_value = line.split[1].to_f

  if transaction_value == 0.0
  elsif (hash[currency] && hash[currency] != [])
    array = hash[currency]
    found = false
    array.each_with_index do |oldtransaction, index|
      if oldtransaction == -transaction_value
        array.delete_at index
        found = true
      end
    end

    if !found
      array << transaction_value
    end
  else
    hash[currency] = [transaction_value]
  end

end

currencies = hash.keys.sort
total = 0

for c in currencies
  total += hash[c].size
  if hash[c].size != 0
    puts c + " " + hash[c].size.to_s
  end
end

puts "total " + total.to_s
