# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

users = []
for entry in blockchain
  users.push(entry["from_user"])
  users.push(entry["to_user"])
end
users.delete(nil)
users = users.uniq

wallets = Array.new(users)
wallets.fill(0)

index = 0
for user in users
  for transactions in blockchain
    if transactions["to_user"] == user
      wallets[index] = wallets[index] + transactions["amount"]
    end
    if transactions["from_user"] == user
      wallets[index] = wallets[index] - transactions["amount"]
    end
  end
  index = index +1
end

index = 0
for user in users
    puts "#{user}'s KelloggCoin balance is #{wallets[index]}"
index = index + 1
end


# # Write code below that returns the number of KelloggCoin that each user has in their 
# # KelloggCoin "wallet".

# # It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
