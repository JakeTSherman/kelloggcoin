# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
to_ben = blockchain[0][:amount] + blockchain[6][:amount]
from_ben = blockchain[2][:amount] + blockchain[5][:amount]
ben = to_ben - from_ben
puts "Ben's KelloggCoin balance is #{ben}"

to_brian = blockchain[1][:amount]
from_brian = blockchain[3][:amount]
brian = to_brian - from_brian
puts "Brian's KelloggCoin balance is #{brian}"

to_evan = blockchain[2][:amount] + blockchain[7][:amount]
from_evan = blockchain[4][:amount]
evan = to_evan - from_evan
puts "Evan's KelloggCoin balance is #{evan}"

to_anthony = blockchain[3][:amount] + blockchain[4][:amount] + blockchain[5][:amount]
from_anthony = blockchain[6][:amount] + blockchain[7][:amount] 
anthony = to_anthony - from_anthony
puts "Anthony's KelloggCoin balance is #{anthony}"

puts " "
# ALTERNATIVE METHOD

ben2 = blockchain[0][:amount] - blockchain[2][:amount] - blockchain[5][:amount] + blockchain[6][:amount]
brian2 = blockchain[1][:amount] - blockchain[3][:amount]
evan2 = blockchain[2][:amount] - blockchain[4][:amount] + blockchain[7][:amount]
anthony2 = blockchain[3][:amount] + blockchain[4][:amount] + blockchain[5][:amount] - blockchain[6][:amount] - blockchain[7][:amount]
text = "'s KelloggCoin balance is "

puts "Ben#{text} #{ben2}"
puts "Brian#{text} #{brian2}"
puts "Evan#{text} #{evan2}"
puts "Anthony#{text} #{anthony2}"

puts " "
# LOOPING METHOD

bens_balance = 0
brians_balance = 0
evans_balance = 0
anthonys_balance = 0

for transaction in blockchain
if transaction[:from_user] == "ben"
  bens_balance = bens_balance - transaction[:amount]
elsif transaction[:from_user] == "brian"
  brians_balance = brians_balance - transaction[:amount]
elsif transaction[:from_user] == "evan"
  evans_balance = evans_balance - transaction[:amount]
elsif transaction[:from_user] == "anthony"
  anthonys_balance = anthonys_balance - transaction[:amount]
end

if transaction[:to_user] == "ben"
  bens_balance = bens_balance + transaction[:amount]
elsif transaction[:to_user] == "brian"
  brians_balance = brians_balance + transaction[:amount]
elsif transaction[:to_user] == "evan"
  evans_balance = evans_balance + transaction[:amount]
elsif transaction[:to_user] == "anthony"
  anthonys_balance = anthonys_balance + transaction[:amount]
end
end 

puts "Ben#{text} #{bens_balance}"
puts "Brian#{text} #{brians_balance}"
puts "Evan#{text} #{evans_balance}"
puts "Anthony#{text} #{anthonys_balance}"